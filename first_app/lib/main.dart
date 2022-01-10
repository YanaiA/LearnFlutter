import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var _questionIndex = 0;
  final _questions = [
    {
      'questionText': 'Best color?',
      'answers': ['Blue', 'White']
    },
    {
      'questionText': 'Best animal?',
      'answers': ['dog', 'cat']
    }
  ];

  void _answerQuestion() {
    print('Answer Question');
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
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
            Question(_questions[_questionIndex]['questionText']),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
