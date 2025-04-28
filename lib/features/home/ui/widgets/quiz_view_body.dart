import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizly/features/home/logic/quiz_provider.dart';
import 'package:quizly/features/home/ui/widgets/question_options_list_view.dart';
import 'package:quizly/features/home/ui/widgets/question_section.dart';

class QuizViewBody extends StatefulWidget {
  const QuizViewBody({super.key, required this.category});
  final String category;

  @override
  State<QuizViewBody> createState() => _QuizViewBodyState();
}

class _QuizViewBodyState extends State<QuizViewBody> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<QuizProvider>(context, listen: false)
          .fetchQuizzes(widget.category);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuestionSection(),
          QuestionOptionsListView(),
        ],
      ),
    );
  }
}





