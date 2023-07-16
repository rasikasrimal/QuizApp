import 'package:flutter/material.dart';
import 'constants/app_colors.dart';

class QuestionText extends StatelessWidget {
  const QuestionText(this.answerText, {super.key});
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        answerText,
        style: const TextStyle(
          fontSize: 25,
          fontFamily: 'helvetica',
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
        textAlign: TextAlign.center, // Center-align the text
      ),
    );
  }
}
