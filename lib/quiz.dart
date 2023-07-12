import 'package:flutter/material.dart';
import 'package:flutter_application_1/start_screen.dart';
import 'package:flutter_application_1/questions_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 183, 235, 255),
                Color.fromARGB(255, 174, 137, 238),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: activeScreen),
      ),
    );
  }
}
