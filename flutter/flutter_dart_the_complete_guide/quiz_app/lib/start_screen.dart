import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.startQuiz});

  final void Function()? startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 80),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(fontSize: 24),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.black),
            icon: Icon(Icons.arrow_right_alt),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
