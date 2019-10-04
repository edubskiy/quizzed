import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  int questionIndex = 0;

  void answerQuestion(int index) {
    questionIndex += 1;
    print('Answer chosen $index, now go to question $questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    List questions = [
      "Wha\s is favourite color",
      "Wha\s is favourite animal"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzed'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: () => answerQuestion(1),
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => answerQuestion(2),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () => answerQuestion(3),
            ),
          ],
        )
      ),
    );
  }
}
