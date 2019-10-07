import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

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
      child: Text(
        scoreMessage,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)
      )
    );
  }
}
