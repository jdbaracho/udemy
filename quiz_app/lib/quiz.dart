import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activeScreen = 'start-screen';

  void startQuiz() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (questions.length <= selectedAnswers.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
      setState(() {
        activeScreen = 'start-screen';
      });
      selectedAnswers = [];
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreenWidget = StartScreen(startQuiz: startQuiz);

    if (activeScreen == 'questions-screen') {
      activeScreenWidget = QuestionsScreen(onSelectedAnswer: chooseAnswer);
    } else if (activeScreen == 'results-screen') {
      activeScreenWidget = ResultsScreen(selectedAnswers: selectedAnswers, onPressed: restartQuiz);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.grey],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: activeScreenWidget,
        ),
      ),
    );
  }
}
