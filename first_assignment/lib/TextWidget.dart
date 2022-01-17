import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String _textToDisplay;
  const TextWidget(this._textToDisplay, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(_textToDisplay);
  }
}
