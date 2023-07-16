import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, {super.key});
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            //side: const BorderSide(color: Colors.white))),
          ),
        ),
      ),
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
