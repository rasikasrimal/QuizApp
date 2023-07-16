import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, {super.key});
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(answerText,
          style: const TextStyle(
            fontSize: 15,
            fontFamily: 'helvetica',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
    );
  }
}
