import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer_button.dart';
import 'package:flutter_application_1/question_text.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuestionText('The Question...'),
          SizedBox(height: 30),
          AnswerButton('Answer 1'),
          AnswerButton('Answer 2'),
          AnswerButton('Answer 3'),
          AnswerButton('Answer 4'),
        ],
      ),
    );
  }
}
