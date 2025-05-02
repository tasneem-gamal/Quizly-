import 'package:flutter/material.dart';
import 'package:quizly/core/theme/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
  });

  final Function() onPressed;
  final Color backgroundColor;
  final String text;
  

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:onPressed, 
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
      child: Text(
        text,
        style: CustomTextStyles.font14BlackRegular(),
      )
    );
  }
}