import 'package:flutter/material.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/features/home/data/models/quiz_model.dart';
import 'package:quizly/features/home/data/models/quiz_question_model.dart';
import 'package:quizly/features/home/data/service/quiz_service.dart';

class QuizProvider with ChangeNotifier {
  final QuizService _quizService = QuizService();

  List<QuizModel> _quizzes = [];
  bool _isLoading = false;
  int _currentQuestionIndex = 0;

  String? _selectedAnswer;
  bool _hasAnswered = false;

  List<QuizModel> get quizzes => _quizzes;
  bool get isLoading => _isLoading;

  QuizQuestion? get currentQuestion {
    if (_quizzes.isEmpty) return null;
    return _quizzes.first.questions[_currentQuestionIndex];
  }

  int get currentQuestionNumber => _currentQuestionIndex + 1;
  int get totalQuestions => _quizzes.isNotEmpty ? _quizzes.first.questions.length : 0;

  String? get selectedAnswer => _selectedAnswer;
  bool get hasAnswered => _hasAnswered;

  Future<void> fetchQuizzes(String category) async {
    _isLoading = true;

    _quizzes = [];
    _currentQuestionIndex = 0;
    _selectedAnswer = null;
    _hasAnswered = false;
    notifyListeners();

    try {
      _quizzes = await _quizService.getQuizzes(category.toLowerCase());
    } catch (e) {
      throw Exception('Error fetching quizzes: $e');
    }

    _isLoading = false;
    notifyListeners();
  }

  void selectAnswer(String answer) {
    if (_hasAnswered) return;
    _selectedAnswer = answer;
    _hasAnswered = true;
    notifyListeners();
  }

  Color getAnswerColor(String answer) {
    if (!_hasAnswered) return Colors.grey[200]!;

    if (answer == currentQuestion!.answer) {
      return ColorsManager.customYellow;
    } else if (answer == _selectedAnswer) {
      return Colors.red;
    } else {
      return Colors.grey[200]!;
    }
  }

  void nextQuestion() {
    if (_currentQuestionIndex < totalQuestions - 1) {
      _currentQuestionIndex++;
      _selectedAnswer = null;
      _hasAnswered = false;
      notifyListeners();
    }
  }
}
