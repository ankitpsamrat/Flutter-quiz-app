// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_print, must_be_immutable, use_key_in_widget_constructors, unused_local_variable, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'what\'s your favorite color?',
        'answerText': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'what\'s your favorite animal?',
        'answerText': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'what\'s your favorite food?',
        'answerText': ['Pizza', 'Burger', 'Dosa', 'Paneer'],
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Appbar'),
          ),
          body: Column(
            children: [
              Question(question[_questionIndex]['questionText']),
              // RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion,),
              // RaisedButton(child: Text('Answer 2'), onPressed: _answerQuestion),
              // RaisedButton(child: Text('Answer 3'), onPressed: _answerQuestion)
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion)
            ],
          )),
    );
  }
}
