// ignore_for_file: dead_code

import 'package:basics/bmi%20app/result.dart';
import 'package:basics/flutter%20basics/async.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyHome());

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool isMale = true;
  double heightVal = 170;
  int weight = 55;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body Mass Index'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    m1expanded('Male', context),
                    SizedBox(
                      width: 15,
                    ),
                    m1expanded('Female', context),
                  ],
                ),
              ),
            ),
            //slider
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Height',
                            style: Theme.of(context).textTheme.headline2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${heightVal.toStringAsFixed(1)}',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Text('CM',
                                style: Theme.of(context).textTheme.bodyText1),
                          ],
                        ),
                        Slider(
                          min: 100,
                          max: 220,
                          value: heightVal,
                          onChanged: (double value) {
                            setState(() {
                              heightVal = value;
                            });
                          },
                        )
                      ]),
                ),
              ),
            ),
            //expanded 2
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    m2expanded('Weight', context),
                    SizedBox(
                      width: 15,
                    ),
                    m2expanded('Age', context),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.teal,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 10,
              child: TextButton(
                  onPressed: () {
                    var resultat = weight / pow(heightVal / 100, 2);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => resultt(
                                result: resultat, male: isMale, age: age)));
                  },
                  child: Text(
                    'Calculate',
                    style: Theme.of(context).textTheme.headline1,
                  )),
            )
          ],
        ),
      ),
    );
  }

  Expanded m1expanded(String type, BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        setState(() {
          isMale = type == 'Male' ? true : false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (isMale && type == 'Male') ||
                    (isMale == false && type == 'Female')
                ? Colors.teal
                : Colors.blueGrey),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              type == 'Male' ? Icons.male : Icons.female,
              size: 90,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              type == 'Male' ? 'Male' : 'Female',
              style: Theme.of(context).textTheme.headline2,
            )
          ],
        ),
      ),
    ));
  }

  Expanded m2expanded(String type, BuildContext context) {
    return Expanded(
        child: Container(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blueGrey),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              type == 'Age' ? 'Age' : 'Weight',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              type == 'Age' ? '${age}' : '${weight}',
              style: Theme.of(context).textTheme.headline1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: type == 'Age' ? 'age--' : 'weight--',
                  onPressed: () {
                    setState(() {
                      type == 'Age' ? age-- : weight--;
                    });
                  },
                  child: Icon(Icons.remove),
                  mini: true,
                ),
                SizedBox(
                  width: 8,
                ),
                FloatingActionButton(
                  heroTag: type == 'Age' ? 'age++' : 'weight++',
                  onPressed: () {
                    setState(() {
                      type == 'Age' ? age++ : weight++;
                    });
                  },
                  child: Icon(Icons.add),
                  mini: true,
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
