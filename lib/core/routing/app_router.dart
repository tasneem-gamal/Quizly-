import 'package:flutter/material.dart';
import 'package:quizly/core/routing/routes.dart';
import 'package:quizly/features/onBoarding/widgets/on_boarding_view.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView()
        );

      default:
        return null;
    }
  }
}