import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assests/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 20),
          const Text("Learn Flutter the fun way!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          const SizedBox(height: 20),
          OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: Text('Start Quiz'))
        ],
      ),
    );
  }
}
