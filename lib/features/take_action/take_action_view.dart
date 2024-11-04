import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobn/features/take_action/widgets/action_timer_widget.dart';
import 'package:mobn/helpers/extensions.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../models/xmodels.dart';
import '../../services/local_notification_service.dart';
import 'take_action.dart';

class TakeActionView extends ConsumerWidget {
  const TakeActionView({
    super.key,
    required this.mob,
    required this.profile,
  });

  final MMobModel mob;
  final MProfileModel profile;

  static const routeName = '/take_action';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) {
          return;
        }

        WakelockPlus.disable();
        ref.read(takeActionProvider.notifier).setPaused(true);

        _showSessionCompleteDialog(ref, context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(mob.habitType.name.habitDoing().capitalize()),
        ),
        body: Column(
          children: [
            ActionTimerWidget(
              mob: mob,
              profile: profile,
              finished: () {
                _playTone();

                WakelockPlus.disable();
                ref.read(takeActionProvider.notifier).setPaused(true);

                _showSessionCompleteDialog(ref, context);
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                WakelockPlus.disable();
                ref.read(takeActionProvider.notifier).setPaused(true);

                _showSessionCompleteDialog(ref, context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 20.0,
                ),
                child: Text(
                    'End ${mob.habitType.name.habitDoing().toLowerCase()} early'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _playTone() async =>
      AudioPlayer().play(AssetSource('sounds/singing-bowl.mp3'), volume: 0.5);

  Future<bool> saveOrDelete(
    WidgetRef ref,
    BuildContext context,
  ) async {
    WakelockPlus.disable();

    ref.read(takeActionProvider.notifier).setPaused(true);

    _showSessionCompleteDialog(ref, context);

    return true;
  }

  Future<void> _showSessionCompleteDialog(
      WidgetRef ref, BuildContext context1) async {
    final provider = ref.watch(takeActionProvider);

    bool loading = false;

    final habitType = mob.habitType;

    int elapsed = (provider.seconds / 60).round();

    return showDialog(
      context: context1,
      barrierDismissible: false,
      builder: (BuildContext context) {
        int elapsedInside = elapsed;
        final maxElapsed = elapsedInside;
        bool canDecrement = elapsedInside > 1;
        bool canIncrement = elapsedInside < maxElapsed;

        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            titlePadding: const EdgeInsets.only(
              left: 24.0,
              top: 24.0,
              right: 24.0,
              bottom: 4.0,
            ),
            contentPadding: const EdgeInsets.only(
              left: 24.0,
              top: 4.0,
              right: 24.0,
              bottom: 24.0,
            ),
            title: elapsed > 0
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'It looks like you ${habitType.name.habitDid().toLowerCase()} for',
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            disabledColor: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(0.3),
                            onPressed: canDecrement
                                ? () {
                                    setState(() {
                                      elapsedInside -= 1;
                                      if (elapsedInside > 1) {
                                        canDecrement = true;
                                      } else {
                                        canDecrement = false;
                                      }
                                      canIncrement = true;
                                    });
                                  }
                                : null,
                            icon: Icon(
                              Icons.remove_circle,
                              size: 32,
                              color: canDecrement
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            elapsedInside.toTimeLong(),
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            disabledColor: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(0.3),
                            onPressed: canIncrement
                                ? () {
                                    setState(() {
                                      elapsedInside += 1;
                                      if (elapsedInside < maxElapsed) {
                                        canIncrement = true;
                                      } else {
                                        canIncrement = false;
                                      }
                                      canDecrement = true;
                                    });
                                  }
                                : null,
                            icon: Icon(
                              Icons.add_circle,
                              size: 32,
                              color: canIncrement
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                : Text(
                    'You ${habitType.name.habitDid().toLowerCase()} for <1 min'),
            actions: [
              loading
                  ? const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: elapsed.round() == 0
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          child: Text(
                            elapsed.round() == 0 ? 'Cancel' : 'Delete',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color: Theme.of(context).colorScheme.error),
                          ),
                          onPressed: () {
                            WakelockPlus.disable();

                            LocalNotificationService()
                                .cancelNotificationWithId(0);

                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          },
                        ),
                        elapsed.round() == 0
                            ? const SizedBox()
                            : TextButton(
                                onPressed: loading
                                    ? null
                                    : () async {
                                        setState(() => loading = true);

                                        WakelockPlus.disable();

                                        LocalNotificationService()
                                            .cancelNotificationWithId(0);

                                        await ref
                                            .read(takeActionProvider.notifier)
                                            .saveAction(
                                              profile: profile,
                                              mob: mob,
                                              minutes: elapsedInside,
                                            );

                                        setState(() => loading = false);

                                        if (context.mounted) {
                                          Navigator.of(context).pop();
                                          Navigator.of(context).pop();
                                        }
                                      },
                                child: loading
                                    ? CircularProgressIndicator()
                                    : Text(
                                        'Save',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                              ),
                      ],
                    ),
            ],
          );
        });
      },
    );
  }
}
