import 'package:flutter/material.dart';
import 'package:simple_quiz_app/quiz.dart';
import 'package:simple_quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 2},
        {'text': 'Elephant', 'score': 11},
        {'text': 'Bird', 'score': 6},
        {'text': 'Ant', 'score': 9},
      ]
    },
    {
      'questionText': 'What is your favorite food?',
      'answers': [
        {'text': 'Noodle', 'score': 2},
        {'text': 'Tea', 'score': 9},
        {'text': 'Milk', 'score': 8},
        {'text': 'Cake', 'score': 1},
      ]
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    if (this._questionIndex < questions.length) {
      _totalScore += score;

      setState(() {
        _questionIndex += 1;
      });
    }
  }

  void _reset() {
    setState(() {
      this._questionIndex = 0;
      this._totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Simple Quiz App")),
            body: (_questionIndex < questions.length)
                ? Quiz(questions, _questionIndex, _answerQuestion)
                : Result(_totalScore, _reset)));
  }
}
