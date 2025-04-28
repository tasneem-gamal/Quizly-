import 'package:flutter/material.dart';
import 'package:quizly/features/home/data/models/quiz_model.dart';
import 'package:quizly/features/home/data/service/quiz_service.dart';

class QuizProvider with ChangeNotifier{
  final QuizService quizService;

  QuizProvider(this.quizService);

  List<QuizModel> _quizzes = [];
  bool _isLoading = false;

  List<QuizModel> get quizzes => _quizzes;
  bool get isLoading => _isLoading;

  Future<void> fetchQuizzes() async{
    _isLoading = true;
    notifyListeners();

    try{
      _quizzes = await quizService.getQuizzes(); 
    } catch (e) {
      throw Exception('Error fetching quizzes: $e');
    }

    _isLoading = false;
    notifyListeners();
  }
}