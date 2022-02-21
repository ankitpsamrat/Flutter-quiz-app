// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use, prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.0,
      height: 43.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
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
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        textColor: Colors.white,
        color: Colors.transparent,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        onPressed: selectHandler,
      ),
    );
  }
}
