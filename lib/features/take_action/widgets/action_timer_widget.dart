import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobn/helpers/extensions.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../models/xmodels.dart';
import '../../../services/local_notification_service.dart';
import '../../in_mob/in_mob.dart';
import '../m_stopwatch.dart';
import '../take_action.dart';
import 'animated_circle_widget.dart';

class ActionTimerWidget extends ConsumerStatefulWidget {
  const ActionTimerWidget({
    super.key,
    required this.mob,
    required this.profile,
    required this.finished,
  });

  final MMobModel mob;
  final MProfileModel profile;
  final VoidCallback finished;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActionTimerWidgetState();
}

class _ActionTimerWidgetState extends ConsumerState<ActionTimerWidget>
    with WidgetsBindingObserver, SingleTickerProviderStateMixin {
  late Timer _timer;
  late MStopwatch _stopwatch;
  late AnimationController _controller;

  bool _isInactive = false;
  DateTime _pausedTime = DateTime.now();
  DateTime _resumedTime = DateTime.now();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    WakelockPlus.enable();

    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();

    _stopwatch = MStopwatch()..start();

    var elapsedSeconds = 0;

    final goalMinutes = ref.read(inMobProvider).minutes;

    final goalInSeconds = goalMinutes * 60;

    final habitType = widget.mob.habitType;
    LocalNotificationService().addNotification(
      '${habitType.name.habitDoing()} Done',
      'You completed your ${habitType.name.habitDoing().toLowerCase()} goal',
      DateTime.now().millisecondsSinceEpoch + (goalInSeconds * 1000),
      channel: habitType.name.habitDoing().toLowerCase(),
    );

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      elapsedSeconds = _stopwatch.elapsed.inSeconds;

      ref.read(takeActionProvider.notifier).setSeconds(elapsedSeconds);

      if (goalInSeconds <= elapsedSeconds) {
        widget.finished();
      }

      if (!_isInactive) {
        _pausedTime = DateTime.now();
      }
    });

    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.inactive:
        _stopwatch.stop();
        _isInactive = true;
        break;
      case AppLifecycleState.resumed:
        _isInactive = false;
        _resumedTime = DateTime.now();
        final elapsed = _stopwatch.elapsed;
        final difference = _resumedTime.difference(_pausedTime);
        setState(() {
          _stopwatch.reset(newInitialOffset: difference + elapsed);
          _stopwatch.start();
        });
        break;
      default:
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _stopwatch.stop();
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final goalMinutes = ref.read(inMobProvider).minutes;
    final elapsedSeconds = ref.watch(takeActionProvider).seconds;
    final goalSeconds = goalMinutes * 60;
    final durationMilli = goalSeconds * 1000;

    final goneBy = goalSeconds - elapsedSeconds;

    if (goalSeconds <= elapsedSeconds) {
      _stopwatch.stop();
      _timer.cancel();
    }

    final minutes = goneBy / 60 > 0 ? goneBy ~/ 60 : 0;
    final seconds = minutes == 0 ? goneBy : goneBy - minutes * 60;
    final secondsText = seconds < 10 ? '0$seconds' : '$seconds';

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AnimatedCircleWidget(
            color: Theme.of(context).colorScheme.inversePrimary,
            milliseconds: 0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AnimatedCircleWidget(
            color: Theme.of(context).colorScheme.primary,
            milliseconds: durationMilli,
          ),
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Positioned.fill(
              child: Align(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '$minutes:$secondsText',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
