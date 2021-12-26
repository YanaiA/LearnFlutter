import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  var questions = [
    'Question 1',
    'Question 2',
  ];

  void answerQuestion() {
    print('Answer Question');
    questionIndex = questionIndex + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
          ],
        ),
      ),
    );
  }
}
