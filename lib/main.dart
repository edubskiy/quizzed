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

  final _questions = const [
      {
         'question': "What\'s is favourite color",
         'answers': [ 'Black', 'Orange', 'Green', 'Red' ]
      },
      {
         'question': "What\'s is favourite animal",
         'answers': [ 'Dog', 'Cat', 'Rabbit', 'Lion' ]
      },
      {
         'question': "What\'s is favourite city",
         'answers': [ 'Palo Alto', 'Lisboa', 'Saint-Petersburg', 'San-Francisco' ]
      },
    ];    

  void _answerQuestion() {
    _questionIndex += 1;
    print("answer question with $_questionIndex");
    setState(() => { _questionIndex });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzed'),
        ),
        body: _questionIndex < _questions.length ? 
          Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,) :
          // Column(
          //   children: <Widget>[
          //     Question(questions[_questionIndex]['question']),
          //     ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
          //       return Answer(answer, _answerQuestion);
          //     }).toList()
          //   ],
          // ) :
          Result()
      ),
    );
  }
}
