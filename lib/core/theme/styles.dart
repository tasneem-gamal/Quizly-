
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/font_weight_helper.dart';

class CustomTextStyles{
  static TextStyle font32RedBold() => TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeightHelper.semiBold,
        color: ColorsManager.customRed,
      );
  static TextStyle font24WhiteSemiBold() => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeightHelper.semiBold,
        color: Colors.white,
      );
  
  static TextStyle font16LightGrayRegular() => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeightHelper.regular,
        color: const Color.fromARGB(255, 233, 233, 233),
      );

  static TextStyle font14BlackRegular() => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeightHelper.regular,
        color: Colors.black,
      );

  static TextStyle font16GrayRegular() => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeightHelper.regular,
        color: ColorsManager.lightGray
      );
  static TextStyle font16BlackMedium() => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeightHelper.medium,
        color: Colors.black
      );
  static TextStyle font24WhiteMedium() => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeightHelper.medium,
        color: Colors.white
      );

  static TextStyle font18WhiteMedium() => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeightHelper.medium,
        color: Colors.white
      );
}