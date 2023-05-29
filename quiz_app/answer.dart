import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  answer(this.x, this.answerQuestion);

  final String answerQuestion;

  final Function() x;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: Size(double.infinity, 46),
                  elevation: 12,
                  side: BorderSide(width: 3, color: Colors.purpleAccent),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
              onPressed: x,
              child: Text(
                answerQuestion,
                style: TextStyle(color: Colors.white, fontSize: 23),
              ),
            ),
          ),
          // SizedBox(
          //   height: 20,
          //   width: 40,
          // ),
        ],
      ),
    );
  }
}
