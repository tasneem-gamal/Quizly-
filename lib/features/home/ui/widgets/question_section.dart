import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/styles.dart';
import 'package:quizly/features/home/logic/quiz_provider.dart';

class QuestionSection extends StatelessWidget {
  const QuestionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final quizProvider = Provider.of<QuizProvider>(context);
    final question = quizProvider.currentQuestion;
    if (question == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'question ${quizProvider.currentQuestionNumber} of ${quizProvider.totalQuestions}',
          style: CustomTextStyles.font16LightGrayRegular(),
        ),
        verticalSpace(10),
        Text(
          question.question,
          style: CustomTextStyles.font24WhiteSemiBold(),
          softWrap: true,
        ),
      ],
    );
  }
}