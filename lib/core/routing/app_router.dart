import 'package:flutter/material.dart';
import 'package:quizly/core/routing/routes.dart';
import 'package:quizly/features/home/ui/home_view.dart';
import 'package:quizly/features/quiz/ui/quiz_view.dart';
import 'package:quizly/features/onBoarding/ui/on_boarding_view.dart';
import 'package:quizly/features/quiz/ui/widgets/score/score_view.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());

      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case Routes.quizView:
        final category = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => QuizView(category: category),
        );

      case Routes.scoreView:
        return MaterialPageRoute(builder: (_) => const ScoreView());
      default:
        return null;
    }
  }
}
