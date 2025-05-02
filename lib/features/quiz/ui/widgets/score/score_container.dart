import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/styles.dart';

class ScoreContainer extends StatelessWidget {
  const ScoreContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      decoration: BoxDecoration(
        color: ColorsManager.otherLightGrayShade,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Correct',
                    style: CustomTextStyles.font14BlackRegular(),
                  ),
                  verticalSpace(5),
                  Text(
                    '4',
                    style: CustomTextStyles.font16BlackMedium(),
                  )
                ],
              )
            ),
            const Expanded(child: VerticalDivider()),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Incorrect',
                    style: CustomTextStyles.font14BlackRegular(),
                  ),
                  verticalSpace(5),
                  Text(
                    '1',
                    style: CustomTextStyles.font16BlackMedium(),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}