import 'package:basics/multi/drawer.dart';
import 'package:basics/multi/screen1.dart';
import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  final String str1;

  screen2(this.str1);
  // void select_screen(BuildContext ctx) {
  //   Navigator.of(ctx).pushReplacementNamed(Screen1.routename);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Screen 2 "),
      ),
      body: null,
      // Center(
      //   child: Column(
      //     children: [
      //       Text(
      //         str1,
      //         style: TextStyle(fontSize: 35),
      //       ),
      //       InkWell(
      //         onTap: () {
      //           select_screen(context);
      //         },
      //         child: Text(
      //           "Go to screen 1",
      //           style: TextStyle(fontSize: 30),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      drawer: MyDrawer(),
    );
  }
}
