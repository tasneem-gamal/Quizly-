import 'package:flutter/material.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/styles.dart';
import 'package:quizly/core/widgets/custom_text_button.dart';
import 'package:quizly/features/quiz/logic/quiz_provider.dart';
import 'package:provider/provider.dart';
import 'package:quizly/core/helpers/extension.dart';
import 'package:quizly/core/routing/routes.dart';

class CancelAlertDialog extends StatelessWidget {
  const CancelAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
    );
  }
}
