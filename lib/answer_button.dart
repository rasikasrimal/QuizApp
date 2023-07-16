import 'package:flutter/material.dart';
import 'constants/app_colors.dart';

class QuestionText extends StatelessWidget {
  const QuestionText(this.answerText, {Key? key}) : super(key: key);
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        answerText,
        style: const TextStyle(
          fontSize: 28, //question text font size
          fontFamily: 'helvetica',
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
        textAlign: TextAlign.center, // Center-align the text
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  const AnswerButton({Key? key, required this.answerText, required this.onTap})
      : super(key: key);

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.infinity,
        padding: Paddings.myPadding,
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.primaryColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          child: Text(
            answerText,
            style: const TextStyle(
              fontSize: 18, //answer button font size
              fontFamily: 'helvetica',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
