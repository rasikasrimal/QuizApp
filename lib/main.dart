import 'package:flutter/material.dart';
import 'package:flutter_application_1/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 93, 34, 196),
              Color.fromARGB(255, 120, 79, 190),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: StartScreen()),
    ),
  ));
}
