import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({Key? key, required this.answerText, required this.onTap})
      : super(key: key);

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Color.fromARGB(255, 12, 0, 63)),
        //buttonColor is here
        /*MaterialStateProperty.all<Gradient>(
          LinearGradient(
            colors: [
              Colors.white,
              Colors.red,
            ],
          ),
        ),*/
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            //side: const BorderSide(color: Colors.white))),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
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
