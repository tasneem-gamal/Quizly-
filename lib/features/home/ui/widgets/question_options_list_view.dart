import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/features/home/ui/widgets/custom_answer_button.dart';

class QuestionOptionsListView extends StatelessWidget {
  const QuestionOptionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      final List<Map<String, dynamic>> packages = [
    {
      'text': 'Java',
      'onPressed': (){},
    },
    {
      'text': 'Kotlin',
      'onPressed': (){},
    },
    {
      'text': 'Java',
      'onPressed': (){},
    },
    {
      'text': 'Kotlin',
      'onPressed': (){},
    },
  ];

    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => CustomAnswerButton(
              text: packages[index]['text'],
              onPressed: packages[index]['onPressed'],
            ),
        separatorBuilder: (context, index) => verticalSpace(12),
        itemCount: packages.length);
  }
}