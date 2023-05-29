import 'package:basics/shared_preference/s2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) {
  runApp(name());
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
  void initState() {
    // TODO: implement initState
    super.initState();
    setdata();
  }

  String str = 'Go to another screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Demo")),
        body: Center(
            child: ElevatedButton(
                child: Text(str),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => another()));
                })));
  }

  Future<void> setdata() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.setString("name", "ali");
    _pref.setInt("age", 20);
    _pref.setDouble("height", 5.8);
    _pref.setBool("developer", true);
    _pref.setStringList("skills", ["flutter", "dart"]);
    print('data send');
  }
}
