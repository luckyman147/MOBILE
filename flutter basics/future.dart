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
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (ctx, snapshot) {
        return Scaffold(
            appBar: AppBar(
              title: Text(snapshot.hasData ? "${snapshot.data}" : 'Loading...'),
            ),
            body: Center(
              child: snapshot.connectionState == ConnectionState.waiting
                  ? CircularProgressIndicator()
                  : Text('Data Loaded'),
            ));
      },
      future: Future.delayed(Duration(seconds: 2), (() => info(2))),
    );
  }
}
