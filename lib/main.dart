import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizly/core/routing/app_router.dart';
import 'package:quizly/quizly.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp(Quizly(appRouter: AppRouter(),));
}


