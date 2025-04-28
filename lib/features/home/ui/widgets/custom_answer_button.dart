import 'package:flutter/material.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/styles.dart';

class CustomAnswerButton extends StatelessWidget {
  const CustomAnswerButton({
    super.key, required this.onPressed,
  });

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed, 
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
        child: Text(
          'Germany',
          style: CustomTextStyles.font24WhiteSemiBold().copyWith(
            color: ColorsManager.mainBlue
          ),
        )
      ),
    );
  }
}