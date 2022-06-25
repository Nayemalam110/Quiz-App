import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  var questions = [
    {
      'questiontext': 'What is your favorite color?',
      'options': ['Red', 'Green', 'White'],
    },
    {
      'questiontext': 'What is your favorite sport?',
      'options': ['Cricket', 'Football', 'hokey'],
    },
    {
      'questiontext': 'When is your favorite time to work?',
      'options': ['Morning', 'Afternoon', 'Evening'],
    },
  ];

  var _index = 0;

  void changeindex() {
    setState(() {
      _index = _index + 1;
    });
    if (_index == 2) {
      _index = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children: [
              Quest(
                questions[_index]['questiontext'] as String,
              ),
              ...(questions[_index]['options'] as List<String>).map((answer) {
                return Answer(answer, changeindex);
              }).toList()
            ],
          )),
    );
  }
}
