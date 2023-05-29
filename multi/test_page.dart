import 'package:flutter/material.dart';

class LessonTwo extends StatefulWidget {
  const LessonTwo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LessonTwoState();
}

class _LessonTwoState extends State<LessonTwo> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: null,
      bottomNavigationBar: BottomNavigationBar(
        items: [],
        currentIndex: index,
        onTap: updateIndex,
      ),
    );
  }

  void updateIndex(int new_index) {
    setState(() => index = new_index);
  }
}
