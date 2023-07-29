import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/start_screen.dart';
import 'package:flutter_application_1/questions_screen.dart';
import 'constants/app_colors.dart';
import 'package:flutter_application_1/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswers =
      []; // Create a list to store the selected answers

  void switchScreen() {
    setState(() {
      selectedAnswers = []; // Reset the selected answers
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer); // Add the selected answer to the list
    if (selectedAnswers.length == questions.length) {
      // If all questions have been answered, show the results
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.bgColor1,
                AppColors.bgColor2,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
