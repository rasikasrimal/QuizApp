import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'questions_summary/questions_summary.dart';
import 'constants/app_colors.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    Key? key,
    required this.chosenAnswers,
    required this.restartQuiz,
  }) : super(key: key);

  final List<String> chosenAnswers;
  final VoidCallback restartQuiz;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding: EdgeInsets.fromLTRB(
                0, // left padding
                MediaQuery.of(context).size.height *
                    0.1, // top padding (10% of screen height)
                0, // right padding
                0, // bottom padding
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "You Answered ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: "$numCorrectQuestions",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color:
                            AppColors.textColor1, // Change the color as needed
                      ),
                    ),
                    const TextSpan(
                      text: " out of ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: "$numTotalQuestions",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color:
                            AppColors.textColor2, // Change the color as needed
                      ),
                    ),
                    const TextSpan(
                      text: " questions correctly!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            RestartButton(onPressed: restartQuiz),
          ],
        ),
      ),
    );
  }
}
