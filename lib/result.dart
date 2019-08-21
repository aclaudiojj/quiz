import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function _restart;

  Result(this._score, this._restart);

  String get resultPhrase {
    return 'you are all done! Score: ' + this._score.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('RESTART!!'),
            onPressed: this._restart,
            textColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
