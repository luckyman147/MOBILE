import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class another extends StatefulWidget {
  const another({super.key});

  @override
  State<another> createState() => _anotherState();
}

class _anotherState extends State<another> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    deletedata();
  }

  String _name = "";
  int _age = 0;
  double _height = 0.0;
  bool _developer = false;
  List<String> _skills = ["", ""];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Another screen ')),
      body: Center(
          child: DefaultTextStyle(
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Name: $_name"),
          Text("Age: $_age"),
          Text("Height: $_height"),
          Text("Developer: $_developer"),
          Text("Skills: $_skills"),
          ElevatedButton(
              onPressed: () async {
                await getdata();
              },
              child: Text("get data")),
        ]),
      )),
    );
  }

  deletedata() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();

    _pref.remove('name');
    _pref.remove("age");
    _pref.remove("height");
    _pref.remove("developer");
    _pref.remove("skills");
  }

  getdata() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    setState(() {
      _name = _pref.getString("name") ?? "No name";
      _age = _pref.getInt("age") ?? 0;
      _height = _pref.getDouble("height") ?? 0.0;
      _developer = _pref.getBool("developer") ?? false;
      _skills = _pref.getStringList("skills") ?? ["", ""];
      print("data send");
    });
  }
}
