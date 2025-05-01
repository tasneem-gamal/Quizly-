import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/styles.dart';

class CircleTimer extends StatefulWidget {
  const CircleTimer({
    super.key, required this.totalSeconds, this.onTimeComplete,
  });
  final int totalSeconds;
  final Function()? onTimeComplete;

  @override
  State<CircleTimer> createState() => _CircleTimerState();
}

class _CircleTimerState extends State<CircleTimer> with SingleTickerProviderStateMixin {
  late AnimationController _circleTimerController;
  late Timer _timer;
  late int _remainingSeconds;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.totalSeconds;
    _circleTimerController = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.totalSeconds),
    )..forward();

    _startTimer();
  }

  void _startTimer(){
    _timer = Timer.periodic(const Duration(seconds: 1), (timer){
      if(_remainingSeconds == 0){
        timer.cancel();
        if(widget.onTimeComplete != null){
          widget.onTimeComplete!();
        }
      } else {
        setState(() {
          _remainingSeconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _circleTimerController.dispose();
    super.dispose();
  }

  Color _getColorBasedOnProgress(double progress) {
    return Color.lerp(Colors.white, Colors.red, progress) ?? Colors.white;
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _circleTimerController, 
      builder: (context, child){
        double progress = _circleTimerController.value;
        return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 45,
              height: 45,
              child: CircularProgressIndicator(
                value: 1.0 - progress,
                strokeWidth: 3.5,
                valueColor: AlwaysStoppedAnimation(_getColorBasedOnProgress(progress)),
                backgroundColor: ColorsManager.lightGray,
              ),
            ),
            Text(
              '$_remainingSeconds',
              style: CustomTextStyles.font24WhiteSemiBold(),
            ),
          ],
        );
      }
    );
  }
}