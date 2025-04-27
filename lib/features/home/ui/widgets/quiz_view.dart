import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/extension.dart';
import 'package:quizly/core/theme/colors.dart';

class QuizView extends StatelessWidget {
  const QuizView({super.key});

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
        title: CircleAvatar(radius: 20,),
        centerTitle: true,
      ),
    );
  }
}