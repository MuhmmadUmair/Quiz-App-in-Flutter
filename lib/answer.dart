import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: ElevatedButton(
          child: FittedBox(child: Text(answerText)), onPressed: selectHandler),
    );
  }
}
