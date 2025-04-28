import 'package:flutter/material.dart';
import 'package:quizly/features/home/ui/widgets/question_options_list_view.dart';
import 'package:quizly/features/home/ui/widgets/question_section.dart';

class QuizViewBody extends StatelessWidget {
  const QuizViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuestionSection(),
          QuestionOptionsListView()
        ],
      ),
    );
  }
}





