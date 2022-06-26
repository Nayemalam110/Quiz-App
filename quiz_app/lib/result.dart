import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int score;
  Result(this.score);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(),
        Text(
          'Your score is $score',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );

    //  Center(
    //   child: Text('Your score is $score'),
    // );
  }
}
