import 'package:basics/quiz_app/question.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'answer.dart';

class quiz extends StatelessWidget {
  final List<Map<String, dynamic>> Questions;
  final int Questionindex;
  final Color b;
  final Function(int score) answerquestions;
  quiz(this.Questions, this.Questionindex, this.answerquestions, this.b);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(Questions[Questionindex]['question'].toString(), b),
        ...(Questions[Questionindex]['answers'] as List<Map<String, Object>>)
            .map((answerr) {
          return answer(
              () => answerquestions(int.parse(answerr['score'].toString())),
              answerr['text'].toString());
        }).toList(),
      ],
    );
  }
}
