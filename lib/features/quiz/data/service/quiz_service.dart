import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizly/features/quiz/data/models/quiz_model.dart';
import 'package:quizly/features/quiz/data/models/quiz_question_model.dart';

class QuizService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<List<QuizModel>> getQuizzes(String category) async {
    try {
      final response = await _firebaseFirestore
          .collection('quizzes')
          .where('category', isEqualTo: category.trim())
          .get();
      if (response.docs.isEmpty) return [];

      final quizModel = QuizModel.fromMap(response.docs.first.data());
      final questions = List<QuizQuestion>.from(quizModel.questions)..shuffle();

      final limitedQuestions = questions.take(10).toList();

      return [
        QuizModel(
          category: quizModel.category,
          questions: limitedQuestions,
        )
      ];
    } catch (e) {
      throw Exception('Error getting quizzes: $e');
    }
  }
}
