import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/extension.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/routing/routes.dart';
import 'package:quizly/features/home/ui/widgets/package_item.dart';

class PackageListView extends StatelessWidget {
  const PackageListView({
    super.key,
  });

  final List<Map<String, String>> packages = const [
    {
      'image': 'assets/images/sports.png',
      'text': 'Sports Questions',
      'category' : 'sports'
    },
    {
      'image': 'assets/images/programming.png',
      'text': 'Programming Questions',
      'category' : 'programming'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) => PackageItem(
                image: packages[index]['image']!,
                text: packages[index]['text']!,
                onPressed: (){
                  context.pushNamed(
                    Routes.quizView,
                    arguments: packages[index]['category'],
                  );
                },
              ),
          separatorBuilder: (context, index) => verticalSpace(50),
          itemCount: 2),
    );
  }
}
