import 'package:flutter/material.dart';
import 'package:simple_quiz_app/answer.dart';
import 'package:simple_quiz_app/question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.questions, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questions[questionIndex]['questionText'] as String),
      ...(questions[questionIndex]['answers'] as List<Map>).map((answer) {
        return Answer(() => answerQuestion(answer['score']), answer['text']);
      })
    ]);
  }
}