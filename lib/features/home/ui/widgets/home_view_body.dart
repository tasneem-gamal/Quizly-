import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/styles.dart';
import 'package:quizly/features/home/ui/widgets/package_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lets play',
            style: CustomTextStyles.font32RedBold(),
          ),
          Text(
            'Are you ready?',
            style: CustomTextStyles.font16GrayRegular(),
          ),
          verticalSpace(40),
          const PackageListView()
        ],
      ),
    );
  }
}

