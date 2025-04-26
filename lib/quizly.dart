import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizly/core/routing/app_router.dart';
import 'package:quizly/core/routing/routes.dart';
import 'package:quizly/core/theme/colors.dart';

class Quizly extends StatelessWidget {
  const Quizly({super.key, required this.appRouter});
  
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: ColorsManager.mainBlue
          ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoarding,
        onGenerateRoute: appRouter.generateRoutes,
      ),
    );
  }
}