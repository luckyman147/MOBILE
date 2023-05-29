import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final Function() q;
  final Color b;
  final resultscore;

  String get resultPhrase {
    String resultText;
    if (resultscore <= 30) {
      resultText = 'You are awesome and innocent';
    } else if (resultscore <= 60) {
      resultText = 'Pretty Likeable';
    } else if (resultscore <= 90) {
      resultText = 'You are Strange';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  result(this.q, this.resultscore, this.b);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style:
                TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: b),
          ),
        ),
        TextButton(
            onPressed: q,
            child: Text(
              'Restart The App',
              style: TextStyle(color: Colors.blueAccent, fontSize: 30),
            ))
      ],
    );
  }
}
