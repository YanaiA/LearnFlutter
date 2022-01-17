import 'package:flutter/material.dart';

import 'TextWidget.dart';

class TextControlWidget extends StatelessWidget {
  final _texts = ["this is a text", "this is another text"];
  final int _currentText;
  final VoidCallback _pressCallback;

  TextControlWidget(this._currentText, this._pressCallback, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_texts[_currentText]),
        ElevatedButton(
          onPressed: _pressCallback,
          child: const TextWidget("Press me"),
        )
      ],
    );
  }
}
