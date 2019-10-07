import 'package:flutter/material.dart';

import 'package:quizzed/result.dart';
import './quiz.dart';
// import './question.dart';
// import './answer.dart';


void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
      {
         'question': "What\'s is favourite color",
         'answers': [ 
           { 'text': 'Black', 'score': 1 },
           { 'text': 'Orange', 'score': 2 },
           { 'text': 'Green', 'score': 3 },
           { 'text': 'Red', 'score': 4 },
        ]
      },
      {
         'question': "What\'s is favourite animal",
         'answers': [ 
           { 'text': 'Dog', 'score': 1 },
           { 'text': 'Cat', 'score': 2 },
           { 'text': 'Rabbit', 'score': 3 },
           { 'text': 'Lion', 'score': 4 },
          ]
      },
      {
         'question': "What\'s is favourite city",
         'answers': [ 
           { 'text': 'Palo Alto', 'score': 1 },
           { 'text': 'Lisboa', 'score': 2 },
           { 'text': 'Saint-Petersburg', 'score': 3 },
           { 'text': 'San-Francisco', 'score': 4 },
          ]
      },
    ];    

  void _answerQuestion(int score) {
    _questionIndex += 1;
    _totalScore += score;
    print("answer question with $_questionIndex");
    setState(() => { 
      _questionIndex,
      _totalScore
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzed'),
        ),
        body: _questionIndex < _questions.length ? 
          Quiz(
            answerQuestion: _answerQuestion, 
            questionIndex: _questionIndex, 
            questions: _questions
          ) :
          Result(_totalScore)
      ),
    );
  }
}
