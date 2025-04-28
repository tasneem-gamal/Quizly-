import 'package:quizly/features/home/data/models/quiz_reponse_model.dart';

class QuizModel {
  final String category;
  final List<QuizQuestion > questions;

  QuizModel({
    required this.category,
    required this.questions,
  });

  factory QuizModel.fromMap(Map<String, dynamic> json) {
    return QuizModel(
      category: json['category'] ?? '',
      questions: (json['questions'] as List<dynamic>)
          .map((q) => QuizQuestion .fromMap(q as Map<String, dynamic>))
          .toList(),
    );
  }
}
