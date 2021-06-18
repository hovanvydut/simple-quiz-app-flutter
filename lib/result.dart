import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  VoidCallback resetHandler;

  Result(this.score, this.resetHandler);

  String get resultPhrase {
    return 'Your score is ' + this.score.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
              child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          )),
          TextButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue), 
            foregroundColor: MaterialStateProperty.all(Colors.white)),
          )
        ],
      ),
    );
  }
}
