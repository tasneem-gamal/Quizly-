import 'package:flutter/material.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/styles.dart';

class ScoreButtons extends StatelessWidget {
  const ScoreButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            onPressed: (){}, 
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
            child: Text(
              'Home',
              style: CustomTextStyles.font14BlackRegular(),
            )
          ),
        ),
        horizontalSpace(12),
        Expanded(
          child: TextButton(
            onPressed: (){}, 
            style: TextButton.styleFrom(
              backgroundColor: ColorsManager.customYellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
            child: Text(
              'Play Again',
              style: CustomTextStyles.font14BlackMedium(),
            )
          ),
        ),
      ],
    );
  }
}
