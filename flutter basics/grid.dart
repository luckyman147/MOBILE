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
  Widget info(String title, Color color) {
    return Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
                colors: [color, color.withOpacity(.6)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Text(
          ' ${title}',
          style: TextStyle(fontSize: 30),
        ));
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
        body: Container(
          padding: EdgeInsets.only(top: 12),
          child: GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            children: [
              info("title", Colors.red),
              info("title2", Colors.blueGrey),
              info("title3", Colors.yellow),
              info("title", Colors.red),
              info("title2", Colors.blueGrey),
              info("title3", Colors.yellow),
              info("title", Colors.red),
              info("title2", Colors.blueGrey),
              info("title3", Colors.yellow),
              info("title", Colors.red),
              info("title2", Colors.blueGrey),
              info("title3", Colors.yellow),
              info("title", Colors.red),
              info("title2", Colors.blueGrey),
              info("title3", Colors.yellow),
              info("title3", Colors.yellow),
              info("title3", Colors.yellow),
              info("title3", Colors.yellow),
              info("title3", Colors.yellow),
            ],
          ),
        ));
  }
}
