import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'main.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  static void select_screen(BuildContext ctx, int n) {
    if (n == 1) {
      Navigator.of(ctx).pushNamed(Screen1.routename,
          arguments: {'id': 10, 'title': "info1"}).then((value) => value);
    } else {
      Navigator.of(ctx).pushReplacementNamed(n == 2 ? '/screen2' : '/',
          arguments: {
            'id': n == 1 ? 10 : 20,
            'title': n == 1 ? "info1" : "info2"
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightBlue,
      child: ListView(
        children: [
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              select_screen(context, 0);
            },
            title: Text(
              "Go to main screen ",
              style: TextStyle(fontSize: 25),
            ),
            subtitle: Text(
              "Go to main screen",
            ),
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              select_screen(context, 1);
            },
            title: Text(
              "Go to screen 1",
              style: TextStyle(fontSize: 25),
            ),
            subtitle: Text(
              "Go to screen 1",
            ),
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              select_screen(context, 2);
            },
            title: Text(
              "Go to screen 2",
              style: TextStyle(fontSize: 25),
            ),
            subtitle: Text(
              "Go to screen 2",
            ),
          ),
        ],
      ),
    );
  }
}
