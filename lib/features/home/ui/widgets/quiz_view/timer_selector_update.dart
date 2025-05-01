import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizly/features/home/logic/quiz_provider.dart';
import 'package:quizly/features/home/ui/widgets/quiz_view/circle_timer.dart';

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
        context.select<QuizProvider, int>((p) => p.currentQuestionNumber);
        return CircleTimer(
          key: ValueKey(currentQuestionNumber),
          totalSeconds: 10,
          onTimeComplete: () {
            context.read<QuizProvider>().nextQuestion();
          },
        );
      },
    );
  }
}
