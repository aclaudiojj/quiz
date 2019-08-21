import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String _textToShow;

  BodyText(this._textToShow);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        this._textToShow,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
