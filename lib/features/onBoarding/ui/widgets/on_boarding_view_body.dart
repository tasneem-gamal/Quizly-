import 'package:flutter/material.dart';
import 'package:quizly/features/onBoarding/logic/on_boarding_animation.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: OnBoardingAnimation(
        imagePath: 'assets/images/book.png', 
        text: 'Quizly'
      ),
    );
  }
}