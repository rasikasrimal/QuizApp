import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i, // 'question_index': 'Question ${i + 1}
          'question': questions[i].text,
          //'answer': chosenAnswers[i],
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          children: [
            Text(
                "You Answered $numCorrectQuestions out of $numTotalQuestions questions correctly!"),
            const SizedBox(height: 30),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                //
              },
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
