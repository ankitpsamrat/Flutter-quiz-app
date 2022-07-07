// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

// class Answer extends StatelessWidget {
//    const Answer({
//     Key? key,
//     required this.selectHandler,     // get error while using this method
//     required this.answerText,
//   }) : super(key: key);

//   final VoidCallback selectHandler;
//   final String answerText;

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(
    this.selectHandler,
    this.answerText,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 130.0,
        height: 43.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.9],
            colors: [
              Color(0xff1d83ab),
              Color(0xff0cbab8),
            ],
          ),
        ),
        child: FlatButton(
          child: Text(
            answerText,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          textColor: Colors.white,
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          onPressed: selectHandler,
        ),
      ),
    );
  }
}
