import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizly/core/helpers/constants.dart';
import 'package:quizly/features/quiz/logic/quiz_controller.dart';
import 'package:quizly/features/quiz/logic/quiz_provider.dart';
import 'package:quizly/features/quiz/ui/widgets/question_options_list_view.dart';
import 'package:quizly/features/quiz/ui/widgets/question_section.dart';

class QuizViewBody extends StatefulWidget {
  const QuizViewBody({super.key, required this.category});
  final String category;

  @override
  State<QuizViewBody> createState() => _QuizViewBodyState();
}

class _QuizViewBodyState extends State<QuizViewBody> {
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
    final quizProvider = Provider.of<QuizProvider>(context, listen: false);
    final controller = QuizController();
    if (mounted) {
        await controller.loadQuizzes(quizProvider, widget.category);
      }
  });
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Constants.appPadding,
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





