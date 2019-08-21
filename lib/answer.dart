import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _question;
  final Function _callback;

  Answer(this._question, this._callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(this._question),
        onPressed: this._callback,
      ),
    );
  }
}
