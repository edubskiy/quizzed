import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _questionIndex = 0;

  void _answerQuestion() {
    _questionIndex += 1;
    print("answer question with $_questionIndex");

    setState(() => { _questionIndex });
    
    // print('Answer chosen $index, now go to question $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzed'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(answer, _answerQuestion);
            }).toList()
          ],
        )
      ),
    );
  }
}
