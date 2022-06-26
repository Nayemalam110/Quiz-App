import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

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
      'options': [
        {'optionsname': 'Red', 'optionsvalue': 1},
        {'optionsname': 'Blue', 'optionsvalue': 2},
        {'optionsname': 'Green', 'optionsvalue': 3},
      ],
    },
    {
      'questiontext': 'What is your favorite sport?',
      'options': [
        {'optionsname': 'hokey', 'optionsvalue': 4},
        {'optionsname': 'Football', 'optionsvalue': 5},
        {'optionsname': 'Cricket', 'optionsvalue': 6},
      ],
    },
    {
      'questiontext': 'When is your favorite time to work?',
      'options': [
        {'optionsname': 'Morning', 'optionsvalue': 7},
        {'optionsname': 'Afternoon', 'optionsvalue': 8},
        {'optionsname': 'Evening', 'optionsvalue': 9},
      ],
    },
  ];

  int _index = 0;
  int score = 0;

  void _changeindex(int source) {
    score = score + source;
    setState(() {
      _index = _index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _index < questions.length
              ? Quiz(questions = questions, _index, _changeindex)
              : Result(score)),
    );
  }
}
