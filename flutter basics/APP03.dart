import 'dart:ffi';
import 'lib/text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  DateTime _Selectedtime = DateTime.now();
  void _datepicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.utc(2018, 6, 7),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        _Selectedtime = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.yellowAccent,
        title: const Text(
          "Appbar ",
        ),
      ),
      body: Center(

          // height: double.infinity,
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: Colors.black),
        onPressed: () {
          _datepicker();
        },
        child: Text(
          "${DateFormat.yMMMd().format(_Selectedtime)}",
          style: TextStyle(color: Colors.amber, fontSize: 30),
        ),
      )),
    );
  }
}
