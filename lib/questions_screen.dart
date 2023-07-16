import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The Question...',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'helvetica',
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 17, 6, 82),
              )),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer 1',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'helvetica',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer 2',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'helvetica',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer 3',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'helvetica',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
