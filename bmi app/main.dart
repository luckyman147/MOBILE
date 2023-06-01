import 'package:basics/bmi%20app/home.dart';
import 'package:flutter/material.dart';

import '../main.dart';

void main() => runApp(const bmi());

class bmi extends StatelessWidget {
  const bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bmi App',
        theme: ThemeData(
            primarySwatch: Colors.teal,
            canvasColor: Colors.black,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            textTheme: TextTheme(
                headline2: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                headline1: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
                bodyText1: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
        home: MyHome());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
