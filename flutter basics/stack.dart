import 'dart:ffi';
import 'lib/text.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(stack());
}

class stack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appbar",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.yellowAccent,
        title: const Text(
          "Appbar Title",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Container(
            //   width: 400,
            //   height: 400,
            //   color: Colors.green,
            // ),
            // Container(
            //   width: 200,
            //   height: 200,
            //   color: Colors.red,
            // ),
            Container(
              width: 400,
              height: 400,
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "Tedt",
                          style: s,
                        ),
                        Text(
                          "data1",
                          style: s,
                        ),
                        Text(
                          "data2",
                          style: s,
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Tedt",
                          style: s,
                        ),
                        Text(
                          "data1",
                          style: s,
                        ),
                        Text(
                          "data2",
                          style: s,
                        ),
                      ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
