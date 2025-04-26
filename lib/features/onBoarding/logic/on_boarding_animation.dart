import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/styles.dart';

class OnBoardingAnimation extends StatefulWidget {
  const OnBoardingAnimation({super.key, required this.imagePath, required this.text});

  final String imagePath;
  final String text;

  @override
  State<OnBoardingAnimation> createState() => _OnBoardingAnimationState();
}

class _OnBoardingAnimationState extends State<OnBoardingAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut)
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: const Interval(0.5, 1.0))
    );

    _animationController.forward();
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: Image.asset(
              widget.imagePath,
              width: 200,
              height: 200,
            ),
          ),
          verticalSpace(10),
          FadeTransition(
            opacity: _fadeAnimation,
            child: Text(
              widget.text,
              style: CustomTextStyles.font24WhiteSemiBold(),
            ),
          )
        ],
      );
  }
}