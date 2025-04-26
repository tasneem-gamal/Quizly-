import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/styles.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/book.png',
            width: 200,
            height: 200,
          ),
          verticalSpace(10),
          Text(
            'Quizly',
            style: CustomTextStyles.font24WhiteSemiBold(),
          )
        ],
      ),
    );
  }
}