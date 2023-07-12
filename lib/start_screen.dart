import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /*Image.asset(
            'assests/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(255, 255, 255, 255),
          ),*/
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assests/images/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(height: 20),
          const Text("Learn Flutter the fun way!",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'helvetica',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          const SizedBox(height: 20),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side:
                    const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'helvetica',
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  )))
        ],
      ),
    );
  }
}
