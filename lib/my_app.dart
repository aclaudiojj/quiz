import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const questions = [
    {
      'questionText': 'what is your favorite color?',
      'answers': [
        {
          'label': 'green',
          'score': 1,
        },
        {
          'label': 'blue',
          'score': 2,
        },
        {
          'label': 'black',
          'score': 3,
        },
        {
          'label': 'red',
          'score': 4,
        },
      ]
    },
    {
      'questionText': 'what is your favorite animal?',
      'answers': [
        {
          'label': 'rabbit',
          'score': 1,
        },
        {
          'label': 'dog',
          'score': 2,
        },
        {
          'label': 'cat',
          'score': 3,
        },
      ]
    },
    {
      'questionText': 'what is your favorite band?',
      'answers': [
        {
          'label': 'metallica',
          'score': 1,
        },
        {
          'label': 'iron maiden',
          'score': 2,
        },
        {
          'label': 'five finger death punch',
          'score': 3,
        },
        {
          'label': 'alter bridge',
          'score': 4,
        },
        {
          'label': 'queen',
          'score': 5,
        },
        {
          'label': 'michael jackson',
          'score': 6,
        },
      ]
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  bool _hasMoreQuestions() {
    return this._questionIndex < questions.length;
  }

  void _answerQuestion(int score) {
    this._totalScore += score;
    // if (this._questionIndex >= questions.length - 1) {
    //   return;
    // }

    setState(() {
      this._questionIndex++;
    });
  }

  void _restartQuiz() {
    setState(() {
      this._questionIndex = 0;
      this._totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: this._hasMoreQuestions()
            ? Quiz(questions, this._questionIndex, this._answerQuestion)
            : Result(this._totalScore, _restartQuiz),
      ),
    );
  }
}
