import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizly/core/helpers/extension.dart';
import 'package:quizly/core/routing/routes.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/styles.dart';
import 'package:quizly/core/widgets/custom_text_button.dart';
import 'package:quizly/features/quiz/logic/quiz_provider.dart';
import 'package:quizly/features/quiz/ui/widgets/quiz_view_body.dart';
import 'package:quizly/features/quiz/ui/widgets/timer_selector_update.dart';

class QuizView extends StatelessWidget {
  const QuizView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.mainBlue,
        leading: IconButton(
          onPressed: () {
            showDialog(
              context: context, 
              builder: (context) => AlertDialog(
                content: Text(
                  'Are you sure you want to end quiz?',
                  style: CustomTextStyles.font14BlackMedium(),
                ),
                actions: [
                  CustomTextButton(
                    onPressed: () => context.pop(), 
                    backgroundColor: Colors.transparent, 
                    text: 'Cancel',
                    textStyle: const TextStyle(color: ColorsManager.lightGray),
                  ),
                  CustomTextButton(
                    onPressed: (){
                      final quizProvider = context.read<QuizProvider>();
                      quizProvider.haveFinished();
                      context.pop();
                      context.pushReplacementNamed(Routes.scoreView);
                    }, 
                    backgroundColor: Colors.red, 
                    text: 'End quiz',
                    textStyle: const TextStyle(color: Colors.white),
                  )
                ],
              )
            );
          },
          icon: const Icon(
            Icons.cancel_outlined,
            size: 30,
            color: Color.fromARGB(255, 237, 237, 237),
          ),
        ),
        title: const TimerSelectorUpdate(),
        centerTitle: true,
      ),
      body: QuizViewBody(
        category: category,
      ),
    );
  }
}


