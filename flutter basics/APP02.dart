import 'lib/text.dart';
import 'package:flutter/material.dart';
import 'lib/info.dart';
import 'package:intl/intl.dart';

void main(List<String> args) {
  runApp(Myapp02());
}

Color w = Colors.white;
Color b = Colors.black;

class Myapp02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Appbar",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.amber,
          fontFamily: 'Roboto',
          textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge:
                  TextStyle(fontFamily: 'Roboto', fontSize: 35, color: w)),
          appBarTheme: AppBarTheme(
              textTheme: ThemeData.light().textTheme.copyWith(
                  titleLarge: TextStyle(
                      fontFamily: 'Roboto', fontSize: 20, color: w)))),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Info> li = [
    Info(
      date: DateTime.now(),
      height: 129,
      name: 'hassan',
    ),
    Info(
      date: DateTime.now(),
      height: 129,
      name: 'hassan2',
    ),
    Info(
      date: DateTime.now(),
      height: 129,
      name: 'hassan3',
    ),
    Info(
      date: DateTime.now(),
      height: 129,
      name: 'hassan4',
    ),
    Info(
      date: DateTime.now(),
      height: 129,
      name: 'hassan5',
    ),
    Info(
      date: DateTime.now(),
      height: 129,
      name: 'hassan6',
    ),
    Info(
      date: DateTime.now(),
      height: 129,
      name: 'hassan7',
    ),
    Info(
      date: DateTime.now(),
      height: 129,
      name: 'hassan8',
    ),
    Info(
      date: DateTime.now(),
      height: 129,
      name: 'hassan9',
    ),
  ];
  void x(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return ListView.builder(
            itemCount: li.length,
            itemBuilder: (_, idx) {
              return Container(
                color: b,
                padding: EdgeInsets.all(4),
                child: Card(
                  color: Theme.of(ctx).primaryColor,
                  shadowColor: Colors.green,
                  elevation: 18,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              li[idx].name,
                              style: Theme.of(ctx).textTheme.titleLarge,
                            ),
                            Text(
                              "${li[idx].height}",
                              style: Theme.of(ctx).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        Text(
                          "${DateFormat.yMMMd().format(li[idx].date)}",
                          style: Theme.of(ctx).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.yellowAccent,
        title: const Text(
          "Appbar Title",
          style: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
        ),
      ),
      body: Container(
        height: double.infinity,
        // width: double.infinity,
        color: b,
        // child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         "text1 text text",
        //         style: TextStyle(fontSize: 20, color: w),
        //       ),
        //       Text(
        //         "text1",
        //         style: TextStyle(fontSize: 20, color: w),
        //       )
        //     ]),
        child: Row(
          children: [
            Image.network(
              "http://2.bp.blogspot.com/-U729MQSyY7I/U6G_2V5jCoI/AAAAAAAAF54/Po-noQVlNHI/s1600/the+mess.jpeg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/A.jpg",
              fit: BoxFit.fill,
              height: 400,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
