import 'package:flutter/material.dart';
import 'package:quiz_app_4/answer.dart';
import 'package:quiz_app_4/question.dart';
import 'package:quiz_app_4/quiz.dart';
import 'package:quiz_app_4/result.dart';

void main() {
  runApp(
    QuizApp(),
  );
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  final _questions = const [
    {
      'questionText': 'What\s your Favorite Color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\s your Favorite Animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Elephent', 'score': 5},
        {'text': 'Snake', 'score': 11},
        {'text': 'Lion', 'score': 9},
      ]
    },
    {
      'questionText': 'What\s your Favorite City ?',
      'answers': [
        {'text': 'Islamabad', 'score': 2},
        {'text': 'Lahore', 'score': 5},
        {'text': 'Karachi', 'score': 8},
        {'text': 'Haroonabad', 'score': 1},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We Have More Questions!!");
    } else {
      print("No More Questions!!");
    }
  }

  @override
  Widget build(BuildContext contxet) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Quiz App"),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
