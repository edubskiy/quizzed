import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get scoreMessage {
    var message;

    if (totalScore <= 3) {
      message = 'You are good to go!';
    } else if (totalScore <= 5) {
      message = 'Pretty likeable';
    } else {
      message = 'Pretty strange';
    }

    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            scoreMessage,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)
          ),
          FlatButton(
            child: Text("Reset quiz", style: TextStyle(color: Colors.blue),),
            onPressed: resetQuiz ,
          )
        ],
      )
    );
  }
}
