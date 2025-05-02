import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizly/core/helpers/extension.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/routing/routes.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/widgets/custom_text_button.dart';
import 'package:quizly/features/quiz/logic/quiz_controller.dart';
import 'package:quizly/features/quiz/logic/quiz_provider.dart';

class ScoreButtons extends StatelessWidget {
  const ScoreButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomTextButton(
            onPressed: (){
              context.pushNamed(Routes.homeView);
            },
            text: 'Home',
            backgroundColor: Colors.white,
          ),
        ),
        horizontalSpace(12),
        Expanded(
          child: CustomTextButton(
            onPressed: ()async {
              final provider = Provider.of<QuizProvider>(context, listen: false);
              final controller = QuizController();
              await controller.loadQuizzes(provider, provider.selectedCategory);
              if (!context.mounted) return;
              context.pushReplacementNamed(
                Routes.quizView,
                arguments: provider.selectedCategory,
              ); 
            }, 
            backgroundColor: ColorsManager.customYellow, 
            text: 'Play Again'
          ),
        ),
      ],
    );
  }
}


