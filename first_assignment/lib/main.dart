// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  final _texts = ["this is a text", "this is another text"];
  var _currentText = 0;

  void _switchText() {
    setState(() {
      _currentText++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("This is AppBar"),
          ),
          body: Column(
            children: [
              Text(_texts[_currentText]),
              ElevatedButton(
                onPressed: _switchText,
                child: Text("Press me"),
              )
            ],
          )),
    );
  }
}

void main() {
  runApp(MainWidget());
}
