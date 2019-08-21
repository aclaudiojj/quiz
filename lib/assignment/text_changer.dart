import 'package:flutter/material.dart';

class TextChanger extends StatelessWidget {
  final Function _changerCallback;

  TextChanger(this._changerCallback);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('press me to change text!'),
      onPressed: this._changerCallback,
    );
  }
}
