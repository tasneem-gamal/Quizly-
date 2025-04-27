import 'package:flutter/material.dart';
import 'package:quizly/core/theme/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lets play',
            style: CustomTextStyles.font32RedBold(),
          ),
          Text(
            'Are you ready?',
            style: CustomTextStyles.font16LightGrayRegular(),
          ),
        ],
      ),
    );
  }
}