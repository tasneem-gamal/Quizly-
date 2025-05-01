import 'package:flutter/material.dart';
import 'package:quizly/features/quiz/ui/widgets/score/score_view_body.dart';

class ScoreView extends StatelessWidget {
  const ScoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ScoreViewBody()),
    );
  }
}