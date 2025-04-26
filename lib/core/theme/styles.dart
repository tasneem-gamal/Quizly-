
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizly/core/theme/font_weight_helper.dart';

class CustomTextStyles{
  static TextStyle font24WhiteSemiBold() => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeightHelper.semiBold,
        color: Colors.white,
      );
  
  static TextStyle font16WhiteSemiBold() => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeightHelper.regular,
        color: Colors.white,
      );
}