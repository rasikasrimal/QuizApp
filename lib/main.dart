import 'package:flutter/material.dart';
import 'package:flutter_application_1/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 183, 235, 255),
              Color.fromARGB(255, 174, 137, 238),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: const StartScreen()),
    ),
  ));
}
