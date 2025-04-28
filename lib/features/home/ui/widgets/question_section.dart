import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/styles.dart';

class QuestionSection extends StatelessWidget {
  const QuestionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'question 4 of 10',
          style: CustomTextStyles.font16LightGrayRegular(),
        ),
        verticalSpace(10),
        Text(
          'Which programming language is mainly used for Android development?',
          style: CustomTextStyles.font24WhiteSemiBold(),
          softWrap: true,
        ),
      ],
    );
  }
}