import 'package:flutter/material.dart';

class resultt extends StatelessWidget {
  const resultt(
      {super.key, required this.result, required this.male, required this.age});

  final double result;
  final bool male;
  final int age;

  String get resultPhrase {
    String resultText = '';
    if (result >= 30) {
      resultText = 'You are obese';
    } else if (result > 25 && result < 30) {
      resultText = 'You are over weight';
    } else if (result >= 18.5 && result <= 24.9) {
      resultText = 'You are normal';
    } else {
      resultText = 'You are under weight';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: const Text('Result'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Gender: ${male ? 'Male' : 'Female'}',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Result: ${result.toStringAsFixed(2)}',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Healthness: $resultPhrase ',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'age: ${age}',
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
        ],
      ))),
    );
  }
}
