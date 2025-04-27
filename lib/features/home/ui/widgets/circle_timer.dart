import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/styles.dart';

class CircleTimer extends StatefulWidget {
  const CircleTimer({
    super.key, required this.totalSeconds,
  });
  final int totalSeconds;

  @override
  State<CircleTimer> createState() => _CircleTimerState();
}

class _CircleTimerState extends State<CircleTimer> with SingleTickerProviderStateMixin {
  late AnimationController _circleTimerController;
  late Timer _timer;
  late int _totalSeconds;

  @override
  void initState() {
    super.initState();
    _totalSeconds = widget.totalSeconds;
    _circleTimerController = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.totalSeconds),
    )..forward();

    _startTimer();
  }

  void _startTimer(){
    _timer = Timer.periodic(const Duration(seconds: 1), (timer){
      if(_totalSeconds == 0){
        timer.cancel();
      } else {
        setState(() {
          _totalSeconds--;
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
              '$_totalSeconds',
              style: CustomTextStyles.font24WhiteSemiBold(),
            ),
          ],
        );
      }
    );
  }
}