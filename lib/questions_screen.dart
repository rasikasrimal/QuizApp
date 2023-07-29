import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer_button.dart';
import 'package:flutter_application_1/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(
        selectedAnswer); // Pass the selected answer to the parent widget

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuestionText(currentQuestion.text),
          const SizedBox(height: 30),
          ...currentQuestion.shuffledAnswers.map((answer) {
            return AnswerButton(
              answerText: answer,
              onTap: () {
                answerQuestion(answer);
              },
            );
          }),
        ],
      ),
    );
  }
}
