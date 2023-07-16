import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  const QuestionText(this.answerText, {super.key});
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return Text(
      answerText,
      style: const TextStyle(
        fontSize: 25,
        fontFamily: 'helvetica',
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
