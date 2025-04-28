import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/extension.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/features/home/ui/widgets/circle_timer.dart';
import 'package:quizly/features/home/ui/widgets/quiz_view_body.dart';

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
              context.pop();
            },
            icon: const Icon(
              Icons.cancel_outlined,
              size: 30,
              color:Color.fromARGB(255, 237, 237, 237),
            )),
        // title: CircleTimer(totalSeconds: 60,),
        centerTitle: true,
      ),
      body: QuizViewBody(category: category,),
    );
  }
}

