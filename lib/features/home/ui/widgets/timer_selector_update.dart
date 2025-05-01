import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizly/features/home/logic/quiz_provider.dart';
import 'package:quizly/features/home/ui/widgets/circle_timer.dart';

class TimerSelectorUpdate extends StatelessWidget {
  const TimerSelectorUpdate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<QuizProvider, int>(
      selector: (_, provider) => provider.currentQuestionNumber,
      builder: (context, currentQuestionNumber, _) {
        return CircleTimer(
          key: ValueKey(currentQuestionNumber),
          totalSeconds: 5,
          onTimeComplete: () {
            context.read<QuizProvider>().nextQuestion();
          },
        );
      },
    );
  }
}
