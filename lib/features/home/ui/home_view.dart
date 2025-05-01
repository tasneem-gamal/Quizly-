import 'package:flutter/material.dart';
import 'package:quizly/features/home/ui/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 250, 230),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}