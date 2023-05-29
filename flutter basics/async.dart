import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(name());
}

int info(
  int a,
) {
  return a;
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  Stream<int> getdata() {
    Stream<int> mystream =
        Stream.periodic(Duration(milliseconds: 300), (a) => a);
    return mystream;
  }

  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("${i}")),
        body: Center(
            child: ElevatedButton(
                child: Text('Click me'),
                onPressed: (() async {
                  await for (var item in getdata()) {
                    setState(() {
                      i = item < 10 ? item : 0;
                    });
                  }
                }))));
  }
}
