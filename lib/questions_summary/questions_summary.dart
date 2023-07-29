import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {Key? key}) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Center(
        child: SizedBox(
          height: 400,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: summaryData.map((data) {
                int questionIndex = (data['question_index'] as int?) ?? -1;
                String questionText =
                    data['question'] as String? ?? 'Question not available';
                String userAnswerText = data['user_answer'] as String? ?? '';
                String correctAnswerText =
                    data['correct_answer'] as String? ?? '';

                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${questionIndex + 1}.',
                      style: const TextStyle(
                        fontSize: 30,
                        fontFamily: 'Helvetica',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            questionText,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Correct Answer: $correctAnswerText',
                            style: const TextStyle(
                              fontSize: 20,
                              color: AppColors.textColor1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Your Answer: $userAnswerText',
                            style: const TextStyle(
                              fontSize: 20,
                              color: AppColors.textColor2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
