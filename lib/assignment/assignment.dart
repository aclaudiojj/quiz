import 'package:flutter/material.dart';
import 'package:quiz/assignment/body_text.dart';
import 'package:quiz/assignment/text_changer.dart';

class Assignment extends StatefulWidget {
  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  String textToChange = 'hello, sistra!!';

  void changeText() {
    setState(() {
      this.textToChange = 'q?';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ASIGNMENT'),
        ),
        body: Column(
          children: <Widget>[
            BodyText(this.textToChange),
            TextChanger(this.changeText),
          ],
        ),
      ),
    );
  }
}
