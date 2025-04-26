import 'package:flutter/material.dart';
import 'package:quizly/core/routing/app_router.dart';
import 'package:quizly/core/routing/routes.dart';

class Quizly extends StatelessWidget {
  const Quizly({super.key, required this.appRouter});
  
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoarding,
      onGenerateRoute: appRouter.generateRoutes,
    );
  }
}