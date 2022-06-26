import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int _index;
  final Function _changeindex;

  Quiz(this.questions, this._index, this._changeindex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Quest(
          questions[_index]['questiontext'] as String,
        ),
        ...(questions[_index]['options'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['optionsname'] as String,
              () => _changeindex(answer['optionsvalue'] as int));
        }).toList()
      ],
    );
  }
}
