import 'package:flutter/material.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/features/quiz/data/models/quiz_model.dart';
import 'package:quizly/features/quiz/data/models/quiz_question_model.dart';

class QuizProvider with ChangeNotifier {

  bool _isLoading = false;
  bool _isFinished = false;
  int _currentQuestionIndex = 0;
  String? _selectedAnswer;
  bool _hasAnswered = false;
  int _correctAnswers = 0;
  int _incorrectAnswers = 0;
  String _selectedCategory = '';
  List<QuizModel> _quizzes = [];
  
  bool get isLoading => _isLoading;
  bool get isFinished => _isFinished;
  int get correctAnswers => _correctAnswers;
  int get incorrectAnswers => _incorrectAnswers;
  int get currentQuestionNumber => _currentQuestionIndex + 1;
  int get totalQuestions => _quizzes.isNotEmpty ? _quizzes.first.questions.length : 0;
  QuizQuestion? get currentQuestion => _quizzes.isNotEmpty ? _quizzes.first.questions[_currentQuestionIndex] : null;
  String? get selectedAnswer => _selectedAnswer;
  bool get hasAnswered => _hasAnswered;
  String get selectedCategory => _selectedCategory;
  List<QuizModel> get quizzes => _quizzes;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  String congratMessage() {
    final correct = _correctAnswers;
    final incorrect = _incorrectAnswers;
    // final total = _quizzes.isNotEmpty ? _quizzes.first.questions.length : 0;
    // final percentage = (correct / total) * 100;

    if (correct > incorrect) {
      return 'Congratulations!';
    } else {
      return 'You can try again!';
    }
  }

  void setQuizzes(List<QuizModel> quizzes, String category) {
    _quizzes = quizzes;
    _selectedCategory = category;
    _currentQuestionIndex = 0;
    _selectedAnswer = null;
    _hasAnswered = false;
    _isFinished = false;
    _correctAnswers = 0;
    _incorrectAnswers = 0;
    notifyListeners();
}
  
  void resetQuiz() {
    _currentQuestionIndex = 0;
    _selectedAnswer = null;
    _hasAnswered = false;
    _isFinished = false;
    _correctAnswers = 0;
    _incorrectAnswers = 0;
    notifyListeners();
  }

  void haveFinished() {
    _isFinished = true;
    notifyListeners();
  }

  void nextQuestion() {
    if (_currentQuestionIndex < totalQuestions - 1) {
      _currentQuestionIndex++;
      _selectedAnswer = null;
      _hasAnswered = false;
    } else {
      _isFinished = true;
    }
    notifyListeners();
  }

  void selectAnswer(String answer) {
    if (_hasAnswered) return;
    _selectedAnswer = answer;
    _hasAnswered = true;

    if(answer == currentQuestion!.answer){
      _correctAnswers++;
    } else{
      _incorrectAnswers++;
    }
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
}
