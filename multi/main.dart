import 'package:basics/multi/drawer.dart';
import 'package:basics/multi/screen1.dart';
import 'package:basics/multi/screen2.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyAPpP());
}

class MyAPpP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Appbar",
      // home: state(),
      initialRoute: "/",
      routes: {
        "/": (context) => state(),
        Screen1.routename: (ctx) => Screen1("information1"),
        '/screen2': (ctx) => screen2("information2"),
      },
    );
  }
}

class state extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Main  Screen'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: ("Screen 1"),
              ),
              Tab(
                icon: Icon(Icons.star),
                text: ("Screen2"),
              )
            ]),
          ),
          body: TabBarView(children: [
            Scaffold(
              appBar: AppBar(title: Text("Part1")),
              body: Center(child: Text("Part 1")),
            ),
            Scaffold(
              appBar: AppBar(title: Text("Part1")),
              body: Center(child: Text("part 2")),
            ),
          ]),
          drawerScrimColor: Colors.blueGrey.withOpacity(.4),
          drawer: MyDrawer()),
    );
  }
}
