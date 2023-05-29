import 'package:basics/multi/drawer.dart';
import 'package:basics/multi/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  final String str1;
  static const routename = '/screen1';
  Screen1(this.str1);
  // void select_screen(BuildContext ctx) {
  //   Navigator.of(ctx).pushReplacementNamed(
  //     '/screen2',
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Screen 1"),
      ),
      body: null,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.delete),
          onPressed: () {
            Navigator.of(context).pop(routename);
          }),
      // Center(
      //   child: Column(
      //     children: [
      //       InkWell(
      //         onTap: () {
      //           //select_screen(context);
      //         },
      //         child: Text(
      //           "Go to screen 2",
      //           style: const TextStyle(fontSize: 30),
      //         ),
      //       ),
      //       Text(
      //         str1,
      //         style: TextStyle(fontSize: 35),
      //       ),
      //     ],
      //   ),
      // ),
      //drawer: MyDrawer()
    );
  }
}
