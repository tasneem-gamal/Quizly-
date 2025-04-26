import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/extension.dart';
import 'package:quizly/core/routing/routes.dart';
import 'package:quizly/features/onBoarding/logic/on_boarding_animation.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), (){
      if (!mounted) return;
      context.pushNamedAndRemoveUntil(Routes.homeView, (Route<dynamic> route) => false,);
    });
  }
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