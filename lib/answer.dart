import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final VoidCallback _selectHandler;
  final String answerText;

  Answer(this._selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: this._selectHandler,
          child: Text(this.answerText)),
          margin: EdgeInsets.only(left: 10, right: 10),
    );
  }
}
