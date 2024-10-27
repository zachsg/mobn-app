import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/xmodels.dart';
import '../../services/database.dart';
import 'mobs_model.dart';

part 'mobs.g.dart';

@Riverpod(keepAlive: true)
class Mobs extends _$Mobs {
  @override
  MobsModel build() => MobsModel(
        loading: true,
      );
}

@riverpod
Stream<List<MMobModel>> mobsStream(Ref ref) {
  final user = FirebaseAuth.instance.currentUser;
  if (user == null) {
    throw AssertionError('User can\'t be null');
  }

  return Database.streamMobs(user);
}
