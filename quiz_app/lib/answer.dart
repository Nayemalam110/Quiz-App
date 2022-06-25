import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerqust;
  String name;

  Answer(this.name, this.answerqust);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      width: double.maxFinite,
      child: ElevatedButton(
        child: Text(name),
        onPressed: answerqust,
      ),
    );
  }
}
