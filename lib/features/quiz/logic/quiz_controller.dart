import 'package:flutter/material.dart';
import 'package:quizly/features/quiz/data/service/quiz_service.dart';
import 'package:quizly/features/quiz/logic/quiz_provider.dart';

class QuizController {
  final QuizService _quizService = QuizService();

  Future<void> loadQuizzes(QuizProvider provider, String category) async{
    provider.setLoading(true);
    try{
      final quizzes = await _quizService.getQuizzes(category);
      provider.setQuizzes(quizzes, category);
    } catch (e){
      debugPrint(e.toString());
    }
    provider.setLoading(false);
  }
}