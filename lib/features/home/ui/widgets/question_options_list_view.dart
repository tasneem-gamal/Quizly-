import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/features/home/logic/quiz_provider.dart';
import 'package:quizly/features/home/ui/widgets/custom_answer_button.dart';

class QuestionOptionsListView extends StatelessWidget {
  const QuestionOptionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final quizProvider = Provider.of<QuizProvider>(context);
    final question = quizProvider.currentQuestion;

    if (question == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => CustomAnswerButton(
              text: question.options[index],
              onPressed: (){},
            ),
        separatorBuilder: (context, index) => verticalSpace(12),
        itemCount: question.options.length);
  }
}