import 'package:flutter/material.dart';
import 'package:quizly/core/theme/styles.dart';
import 'package:quizly/features/quiz/ui/widgets/score/score_view_body.dart';

class ScoreView extends StatelessWidget {
  const ScoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text(
          'Good Job!',
          style: CustomTextStyles.font24WhiteMedium(),
        ),
        centerTitle: true,
      ),
      body: const ScoreViewBody(),
    );
  }
}
