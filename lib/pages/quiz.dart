import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/pages/question_screen.dart';
import 'package:quiz_app/pages/results_screen.dart';
import 'package:quiz_app/pages/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  Widget ecran() {
    if (activeScreen == 'start-screen') {
      return StartScreen(switchScreen);
    }
    if (activeScreen == 'question-screen') {
      return QuestionScreen(onSelectedAnswer: chooseAnswers);
    }
    return  ResultsScreen(choosenAnswers: selectedAswers,);
  }

  void chooseAnswers(String answer) {
    selectedAswers.add(answer);

    if (selectedAswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        child: ecran()
      ),
    ));
  }
}
