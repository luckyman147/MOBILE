import 'package:basics/shared_preference/myapp.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sign extends StatefulWidget {
  @override
  State<Sign> createState() => SignState();
}

class SignState extends State<Sign> {
  String _email = "";
  String _password = "";
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('sign up'),
          ),
          body: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(hintText: 'Email'),
                  controller: _emailcontroller,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'password'),
                  controller: _passwordcontroller,
                ),
                Builder(
                    builder: (ctx) => ElevatedButton(
                        onPressed: () async {
                          SharedPreferences _prefs =
                              await SharedPreferences.getInstance();
                          _prefs.setString("e", _emailcontroller.text);
                          _prefs.setString("p", _passwordcontroller.text);

                          Navigator.of(ctx).pushReplacement(
                              MaterialPageRoute(builder: (_) => Myapp1()));
                        },
                        child: Text('Sign UP')))
              ],
            ),
          ),
        ));
  }
}
