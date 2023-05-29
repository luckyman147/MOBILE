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
      home: name(),
    );
  }
}

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // Transform.rotate(
        //   // angle: pi / 4,
        //   angle: _value * (pi / 180),
        //   child: Container(
        //     color: Colors.red,
        //     height: _value,
        //     width: _value,
        //   ),
        // ),
        // Text(
        //   'Value: ${(_value).round()}',
        //   style: TextStyle(fontSize: 30),
        // ),
        // Slider(
        //   value: _value,
        //   onChanged: (double val) => setState(() {
        //     _value = val;
        //   }),
        //   min: 0,
        //   max: 360,
        //   divisions: 15,
        //   label: "value",
        //   activeColor: Colors.yellowAccent,
        //   inactiveColor: Colors.grey,
        // ),
        // Transform.scale(
        //   // angle: pi / 4,
        //   scale: _value,
        //   child: Container(
        //     color: Colors.green,
        //     height: 50,
        //     width: 50,
        //   ),
        // ),
        // Text(
        //   'Value: ${(_value).round()}',
        //   style: TextStyle(fontSize: 30),
        // ),
        // Slider(
        //   value: _value,
        //   onChanged: (double val) => setState(() {
        //     _value = val;
        //   }),
        //   min: 0,
        //   max: 4,
        //   divisions: 4,
        //   label: "scale",
        //   activeColor: Colors.pink,
        //   inactiveColor: Colors.grey,
        // ),
        Transform(
          // angle: pi / 4,
          transform: Matrix4.skew(.7, .6),
          child: Container(
            color: Colors.black,
            height: 100,
            width: 100,
          ),
        ),
        Text(
          'Value: ${(_value).round()}',
          style: TextStyle(fontSize: 30),
        ),
        Slider(
          value: _value,
          onChanged: (double val) => setState(() {
            _value = val;
          }),
          min: -100,
          max: 150,
          divisions: 100,
          label: "translate",
          activeColor: Colors.green,
          inactiveColor: Colors.black,
        ),
        // Transform.translate(
        //   // angle: pi / 4,
        //   offset: Offset(_value, _value),
        //   child: Container(
        //     color: Colors.black,
        //     height: 100,
        //     width: 100,
        //   ),
        // ),
        // Text(
        //   'Value: ${(_value).round()}',
        //   style: TextStyle(fontSize: 30),
        // ),
        // Slider(
        //   value: _value,
        //   onChanged: (double val) => setState(() {
        //     _value = val;
        //   }),
        //   min: -100,
        //   max: 150,
        //   divisions: 100,
        //   label: "translate",
        //   activeColor: Colors.green,
        //   inactiveColor: Colors.black,
        // ),
      ]),
    );
  }
}
