import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color.fromARGB(255, 43, 15, 109);
  static const Color bgColor1 = Color.fromARGB(255, 168, 139, 235);
  static const Color bgColor2 = Color.fromARGB(255, 248, 206, 236);
  static const Color textColor1 = Color.fromARGB(255, 27, 94, 32);
  static const Color textColor2 = Color.fromARGB(255, 40, 53, 147);

  // Add more color variables as needed
}

class Paddings {
  static const EdgeInsets myPadding = EdgeInsets.fromLTRB(20, 0, 20, 0);
}

const Gradient myGradient = LinearGradient(
  colors: [
    Colors.red,
    Colors.blue,
  ],
);

class RestartButton extends StatelessWidget {
  final VoidCallback onPressed;

  RestartButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
      ),
      icon: const Icon(Icons.refresh),
      label: const Text(
        'Restart Quiz',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
