import 'package:flutter/material.dart';
import 'package:quizly/core/routing/routes.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => SizedBox()
        );

      default:
        return null;
    }
  }
}