import 'package:flutter/material.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/styles.dart';

class CustomAnswerButton extends StatelessWidget {
  const CustomAnswerButton({
    super.key, required this.onPressed, required this.text, this.color,
  });

  final Function() onPressed;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed, 
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
        child: Text(
          text,
          style: CustomTextStyles.font24WhiteSemiBold().copyWith(
            color: ColorsManager.mainBlue
          ),
        )
      ),
    );
  }
}