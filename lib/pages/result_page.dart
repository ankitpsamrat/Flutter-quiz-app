// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

// class Result extends StatelessWidget {
//   const Result(int totalScore, void Function() resetQuiz, {
//     Key? key,
//     required this.resultScore,     // get error while using this method
//     required this.resetHandler,
//   }) : super(key: key);

//   final int resultScore;
//   final VoidCallback resetHandler;

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(
    this.resultScore,
    this.resetHandler,
  );

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent !';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable !';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange? !';
    } else {
      resultText = 'You are so bad !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(55),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: resetHandler,
              child: const Text('Restart Quiz!'),
            ),
            // FlatButton(
            //   child: const Text(
            //     'Restart Quiz!',
            //     style: TextStyle(
            //       fontSize: 16,
            //     ),
            //   ),
            //   textColor: Colors.white,
            //   color: const Color(0xff0cbab8),
            //   onPressed: resetHandler,
            // ),
          ],
        ),
      ),
    );
  }
}
