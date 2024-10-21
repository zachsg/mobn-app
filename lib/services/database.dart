import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/xmodels.dart';

class Database {
  static final db = FirebaseFirestore.instance;

  static const profilesCollection = 'profiles';
  static const mobsCollection = 'mobs';

  static Future<bool> acceptTerms() async {
    final id = FirebaseAuth.instance.currentUser?.uid;

    try {
      if (id != null) {
        final data = {"accepted_terms": true};

        await db
            .collection(profilesCollection)
            .doc(id)
            .set(data, SetOptions(merge: true));

        return true;
      }
    } catch (e) {
      return false;
    }
    return false;
  }

  static Future<MProfileModel> loadProfile() async {
    final user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      final docRef = db.collection(profilesCollection).doc(user.uid);
      final doc = await docRef.get();

      if (doc.exists) {
        final dataJson = doc.data() as Map<String, dynamic>;
        return MProfileModel.fromJson(dataJson);
      } else {
        final profile = MProfileModel(
          id: user.uid,
          email: user.email ?? "",
          name: user.displayName ?? "",
        );

        db.collection(profilesCollection).doc(user.uid).set(profile.toJson());

        return profile;
      }
    }
    return MProfileModel(id: '');
  }

  static Stream<MProfileModel> streamProfile(User user) {
    return db
        .collection(profilesCollection)
        .doc(user.uid)
        .withConverter<MProfileModel>(
          fromFirestore: (snapshot, _) =>
              MProfileModel.fromJson(snapshot.data()!),
          toFirestore: (profile, _) => profile.toJson(),
        )
        .snapshots()
        .map((snapshot) => snapshot.data()!);
  }

  static Future<bool> updateProfile(MProfileModel profile) async {
    try {
      await db
          .collection(profilesCollection)
          .doc(profile.id)
          .update(profile.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> createMob(MMobModel mob) async {
    try {
      await db.collection(mobsCollection).add(mob.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  static Stream<List<MMobModel>> streamMobs(User user) async* {
    List<MMobModel> allMobs = [];

    await for (final snapshot in db
        .collection(mobsCollection)
        .where('mate_ids', arrayContains: user.uid)
        .withConverter<MMobModel>(
          fromFirestore: (snapshot, _) => MMobModel.fromJson(snapshot.data()!),
          toFirestore: (profile, _) => profile.toJson(),
        )
        .snapshots()) {
      allMobs.clear();

      for (final doc in snapshot.docs) {
        final mob = doc.data();

        allMobs = [...allMobs, mob];
        yield allMobs;
      }
    }
  }
}
