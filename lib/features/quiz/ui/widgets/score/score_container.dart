import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/styles.dart';
import 'package:quizly/features/quiz/logic/quiz_provider.dart';

class ScoreContainer extends StatelessWidget {
  const ScoreContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final quizProvider = Provider.of<QuizProvider>(context, listen: false);
    
    return Container(
      height: 90.h,
      decoration: BoxDecoration(
        color: ColorsManager.otherLightGrayShade,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Correct',
                    style: CustomTextStyles.font14BlackRegular(),
                  ),
                  verticalSpace(5),
                  Text(
                    '${quizProvider.correctAnswers}',
                    style: CustomTextStyles.font16BlackMedium(),
                  )
                ],
              )
            ),
            const Expanded(child: VerticalDivider()),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Incorrect',
                    style: CustomTextStyles.font14BlackRegular(),
                  ),
                  verticalSpace(5),
                  Text(
                    '${quizProvider.incorrectAnswers}',
                    style: CustomTextStyles.font16BlackMedium(),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}