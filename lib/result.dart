import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPharse {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'Your Awsome and Inocent!!!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!!!';
    } else if (resultScore <= 16) {
      resultText = 'You are Strange!!!';
    } else {
      resultText = 'You are Bad!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPharse,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(onPressed: resetHandler, child: Text("Reset Quiz"))
        ],
      ),
    );
  }
}
