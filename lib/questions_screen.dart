import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer_button.dart';
import 'package:flutter_application_1/question_text.dart';
import 'package:flutter_application_1/data/questions.dart';

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
    final currentQuestion = questions[0];
    final answer0 = currentQuestion.answers[0];
    final answer1 = currentQuestion.answers[1];
    final answer2 = currentQuestion.answers[2];
    final answer3 = currentQuestion.answers[3];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuestionText(currentQuestion.text),
          const SizedBox(height: 30),
          AnswerButton(answerText: answer0, onTap: () {}),
          AnswerButton(answerText: answer1, onTap: () {}),
          AnswerButton(answerText: answer2, onTap: () {}),
          AnswerButton(answerText: answer3, onTap: () {}),
        ],
      ),
    );
  }
}
