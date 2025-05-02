import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizly/core/helpers/extension.dart';
import 'package:quizly/core/routing/routes.dart';
import 'package:quizly/features/quiz/logic/quiz_provider.dart';
import 'package:quizly/features/quiz/ui/widgets/circle_timer.dart';

class TimerSelectorUpdate extends StatelessWidget {
  const TimerSelectorUpdate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<QuizProvider, bool>(
      selector: (_, provider) => provider.isLoading,
      builder: (context, isLoading, _) {
        if(isLoading){
          return const SizedBox();
        }
        final currentQuestionNumber =
        context.select<QuizProvider, int>((value) => value.currentQuestionNumber);
        final totalQuestions = context.select<QuizProvider, int>((value) => value.totalQuestions);

        return CircleTimer(
          key: ValueKey(currentQuestionNumber),
          totalSeconds: 10,
          onTimeComplete: () {
            final quizProvider = context.read<QuizProvider>();
            if(currentQuestionNumber == totalQuestions){
              if(context.mounted){
                context.pushReplacementNamed(Routes.scoreView);
              } 
            } else {
              quizProvider.nextQuestion();
            }
          },
        );
      },
    );
  }
}
