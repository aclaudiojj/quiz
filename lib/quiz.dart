import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final int _questionIndex;
  final Function _answerQuestion;

  Quiz(this._questions, this._questionIndex, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(this._questions[this._questionIndex]['questionText']),
        ...(this._questions[_questionIndex]['answers']
                as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
                  answer['label'], () => this._answerQuestion(answer['score'])),
            )
            .toList()
      ],
    );
  }
}
