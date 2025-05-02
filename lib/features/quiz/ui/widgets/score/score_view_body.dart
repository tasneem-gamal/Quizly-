import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/constants.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/styles.dart';

class ScoreViewBody extends StatelessWidget {
  const ScoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: Column(
        children: [
          verticalSpace(20),
          Text(
            'Good Job!',
            style: CustomTextStyles.font24WhiteMedium(),
          ),
        ],
      ),
    );
  }
}