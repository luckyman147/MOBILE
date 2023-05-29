import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(slider());
}

class slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Appbar",
      home: transfo(),
    );
  }
}

class transfo extends StatefulWidget {
  const transfo({super.key});

  @override
  State<transfo> createState() => _transfoState();
}

class _transfoState extends State<transfo> {
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          transform: Matrix4.rotationZ(-39 * (pi / 180))
            ..translate(_value, _value, _value),
          width: 300,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepPurple.shade300,
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                color: Colors.black26,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            "Myshop",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Slider(
          value: _value,
          onChanged: (double val) => setState(() {
            _value = val;
          }),
          min: 0,
          max: 100,
          label: "translate",
          activeColor: Colors.deepPurple.shade300,
          inactiveColor: Colors.black,
        ),
      ]),
    );
  }
}
