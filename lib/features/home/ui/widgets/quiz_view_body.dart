import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/styles.dart';

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
          CustomAnswerButton()
        ],
      ),
    );
  }
}

class CustomAnswerButton extends StatelessWidget {
  const CustomAnswerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: (){}, 
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
        child: Text(
          'Germany',
          style: CustomTextStyles.font24WhiteSemiBold().copyWith(
            color: ColorsManager.mainBlue
          ),
        )
      ),
    );
  }
}