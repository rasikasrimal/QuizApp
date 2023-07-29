import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0), // Add top padding here
      child: Center(
        child: SizedBox(
          height: 300,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center children vertically
              children: summaryData.map((data) {
                int questionIndex = (data['question_index'] as int?) ?? -1;
                return Row(
                  children: [
                    Text((questionIndex + 1).toString()),
                    Expanded(
                      // Align the contents of the column to center vertically and horizontally
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(data['question'] as String? ??
                              'Question not available'),
                          const SizedBox(height: 10),
                          Text(data['user_answer'] as String? ??
                              'User answer not available'),
                          Text(data['correct_answer'] as String? ??
                              'Correct answer not available'),
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
