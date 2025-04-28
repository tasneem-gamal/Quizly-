import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/styles.dart';
import 'package:quizly/features/home/ui/widgets/custom_answer_button.dart';

class QuizViewBody extends StatelessWidget {
  const QuizViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
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
          CustomAnswerButton(
            text: 'Germany',
            onPressed: (){},
          )
        ],
      ),
    );
  }
}

