// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'answer_page.dart';
import 'question_page.dart';

// class Quiz extends StatelessWidget {
//   const Quiz({
//     Key? key,
//     required this.questions,
//     required this.questionIndex,
//     required this.answerQuestion,     // get error while using this method
//   }) : super(key: key);

//   final List<Map<String, Object>> questions;
//   final int questionIndex;
//   final Function answerQuestion;

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(() => answerQuestion(answer['score']),
                answer['text'] as String);
          },
        ).toList()
      ],
    );
  }
}
