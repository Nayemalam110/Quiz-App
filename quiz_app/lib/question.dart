import 'package:flutter/material.dart';

class Quest extends StatelessWidget {
  final String qst;

  Quest(this.qst);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(qst),
    );
  }
}
