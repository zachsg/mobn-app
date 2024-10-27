import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobn/helpers/extensions.dart';

import '../../helpers/constants.dart';
import 'profile_setup.dart';

class ProfileSetupView extends ConsumerStatefulWidget {
  const ProfileSetupView({super.key});

  static const routeName = '/profile_setup';

  @override
  ConsumerState<ProfileSetupView> createState() => _ProfileSetupViewState();
}

class _ProfileSetupViewState extends ConsumerState<ProfileSetupView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController handleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(profileSetupProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Set Up Profile'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(mainPadding),
          child: Column(
            children: [
              Text(
                'Before we move on, let\'s get your basic profile set up!',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32.0),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(nameIcon),
                  labelText: nameLabel.capitalize(),
                  hintText: 'Enter name',
                  errorText:
                      provider.nameError.isNotEmpty ? provider.nameError : null,
                ),
                textCapitalization: TextCapitalization.words,
                controller: nameController,
                onChanged: (value) =>
                    ref.read(profileSetupProvider.notifier).setName(value),
              ),
              const SizedBox(height: 32.0),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(handleIcon),
                  labelText: handleLabel.capitalize(),
                  hintText: 'Enter handle',
                  prefixText: '@',
                  errorText: provider.handleError.isNotEmpty
                      ? provider.handleError
                      : null,
                ),
                textCapitalization: TextCapitalization.none,
                controller: handleController,
                onChanged: (value) =>
                    ref.read(profileSetupProvider.notifier).setHandle(value),
              ),
              const SizedBox(height: 32.0),
              FilledButton(
                onPressed: provider.loading
                    ? null
                    : () async => await ref
                        .read(profileSetupProvider.notifier)
                        .createProfile(),
                child: provider.loading
                    ? CircularProgressIndicator()
                    : Text(saveLabel),
              ),
              const Spacer(),
              TextButton(
                onPressed: ref.read(profileSetupProvider.notifier).signOut,
                child: const Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
