import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizly/features/home/data/models/quiz_model.dart';

class QuizService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<List<QuizModel>> getQuizzes() async {
    try {
      final response = await _firebaseFirestore.collection('quizzes').get();
      return response.docs.map((doc) {
        return QuizModel.fromMap(doc.data());
      }).toList();
    } catch (e) {
      throw Exception('Error getting quizzes: $e');
    }
  }
}
