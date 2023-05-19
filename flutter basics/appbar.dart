import 'dart:ffi';
import 'lib/text.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
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
        // margin: EdgeInsets.fromLTRB(33, 3, 8, 9),
        // margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 34),
        margin: const EdgeInsets.only(
          top: 8,
        ),

        padding: EdgeInsets.fromLTRB(33, 3, 8, 9),
        color: Colors.redAccent,
        // height: double.infinity,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Mytext('aaa', s),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Mytext("data", S3),
            )
          ],
        ),
      ),
    );
  }
}
