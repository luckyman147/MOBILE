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
        "/": (context) => home(),
        Screen1.routename: (ctx) => Screen1("information1"),
        '/screen2': (ctx) => screen2("information2"),
      },
    );
  }
}

class home extends StatefulWidget {
  @override
  _state createState() => _state();
}

class _state extends State<home> {
  void select_screen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushReplacementNamed(
        n == 1 ? Screen1.routename : '/screen2',
        arguments: {
          'id': n == 1 ? 10 : 20,
          'title': n == 1 ? "info1" : "info2"
        });
  }

  final List<Map<String, Widget>> _pages = [
    {
      'Page': Scaffold(
        body: Center(child: Text("Part 1")),
      ),
      'title': Text("screen 1")
    },
    {
      'Page': Scaffold(
        body: Center(child: Text("part 2")),
      ),
      'title': Text("Screen 2")
    },
  ];
  int _selectedPageIndex = 0;
  void _x1(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: (_pages[_selectedPageIndex]['title']),
        ),
        body: _pages[_selectedPageIndex]['Page'],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue[200],
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedPageIndex,
          selectedFontSize: 20,
          unselectedFontSize: 15,
          type: BottomNavigationBarType.shifting,
          onTap: _x1,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.blue[200],
                icon: Icon(Icons.category),
                label: "Screen 1"),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue[200],
                icon: Icon(Icons.star),
                label: "Screen 2")
          ],
        ),
        drawerScrimColor: Colors.blueGrey.withOpacity(.4),
        drawer: Drawer(
          backgroundColor: Colors.lightBlue,
          child: ListView(
            children: [
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
                  "Go to screen 2",
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
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
