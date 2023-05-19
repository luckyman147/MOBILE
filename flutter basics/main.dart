import 'package:basics/flutter%20basics/textfield.dart';
import 'package:flutter/material.dart';

import 'lesson_two.dart';

void main() {
  runApp(const Textfield());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const LessonTwo(),
    );
  }
}
