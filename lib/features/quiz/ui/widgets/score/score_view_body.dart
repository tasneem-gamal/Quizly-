import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/constants.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/styles.dart';
import 'package:quizly/features/quiz/ui/widgets/score/score_container.dart';

class ScoreViewBody extends StatelessWidget {
  const ScoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/cup_prize.png'),
            Text(
              'Congratulations!',
              style: CustomTextStyles.font18WhiteMedium(),
            ),
            verticalSpace(16),
            const ScoreContainer()
          ],
        ),
      ),
    );
  }
}

