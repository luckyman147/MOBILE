import 'package:basics/flutter%20basics/APP02.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class question extends StatelessWidget {
  final String questionText;
  final Color b;
  question(this.questionText, this.b);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      padding: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30, color: b),
        textAlign: TextAlign.center,
      ),
    );
  }
}
