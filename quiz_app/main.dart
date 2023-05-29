import 'package:basics/quiz_app/answer.dart';
import 'package:basics/quiz_app/question.dart';
import 'package:basics/quiz_app/quiz.dart';
import 'package:basics/quiz_app/result.dart';
import 'package:flutter/material.dart';

main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  Color w = Colors.white;
  Color b = Colors.black;
  final List<Map<String, dynamic>> _question = [
    {
      'question': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'Green', 'score': 30},
      ]
    },
    {
      'question': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 20},
        {'text': 'Elephant', 'score': 30},
      ]
    },
    {
      'question': 'What\'s your favorite instructor ?',
      'answers': [
        {'text': 'max', 'score': 10},
        {'text': 'max', 'score': 20},
        {'text': 'max', 'score': 30},
      ]
    },
  ];
  int _total_score = 0;
  int _questionIndex = 0;
  bool isSwitch = false;
  void answserquestions(int score) {
    _total_score += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _resetquiz() {
    setState(() {
      _questionIndex = 0;
      _total_score = 0;
    });
  }

  int num0 = 0;
  int num2 = 0;
  int num1 = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Switch(
                value: isSwitch,
                onChanged: (value) {
                  setState(() {
                    isSwitch = value;
                    if (isSwitch == true) {
                      w = Colors.black;
                      b = Colors.white;
                    } else {
                      w = Colors.white;
                      b = Colors.black;
                    }
                  });
                },
                inactiveTrackColor: Colors.red,
                inactiveThumbColor: Colors.yellow,
                activeTrackColor: Colors.white,
                activeColor: Colors.yellow),
          ],
          title: Text(
            'Quiz App',
            style: TextStyle(color: w),
          ),
        ),
        body: Container(
            color: w,
            width: double.infinity,
            child: _questionIndex < _question.length
                ? quiz(_question, _questionIndex, answserquestions, b)
                : result(_resetquiz, _total_score, b)),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.arrow_back,
            color: b,
          ),
          onPressed: () {
            setState(() {
              if (_questionIndex > 0) {
                _questionIndex = _questionIndex - 1;
              }
            });
            if (_questionIndex == 1) _total_score -= 0;
            if (_questionIndex == 2) _total_score -= 10;
            if (_questionIndex == 3) _total_score -= 20;
          },
        ),
      ),
    );
  }
}
