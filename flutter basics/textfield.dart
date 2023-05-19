import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  const Textfield({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Textfieldstate();
}

class _Textfieldstate extends State<Textfield> {
  var b = Colors.black;
  var w = Colors.white;
  var a = Colors.red[300];
  var blue = Colors.blue;
  var brown = Colors.yellow[100];
  var controller = TextEditingController();
  var str = "gmail";
  bool password_visible = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            title: const Text('APPbar title'),
          ),
          body: Container(
              height: double.infinity,
              color: b,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: const EdgeInsets.all(7.0),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1 * 2, color: blue),
                                borderRadius: BorderRadius.circular(60)),
                            fillColor: brown,
                            filled: true,
                            labelText: str,
                            labelStyle: TextStyle(fontSize: 23, color: a),
                            hintText: "Enter gmail ",
                            hintStyle: TextStyle(fontSize: 20, color: w),
                            prefixIcon: Icon(
                              Icons.alternate_email,
                              color: Colors.blue,
                            )),
                        maxLines: 2,
                        controller: controller,
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20, color: w),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(7.0),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1 * 2, color: blue),
                                borderRadius: BorderRadius.circular(8)),
                            fillColor: brown,
                            filled: true,
                            labelText: "enter your name",
                            labelStyle: TextStyle(fontSize: 23, color: a),
                            hintText: "ENter name ",
                            hintStyle: TextStyle(fontSize: 20, color: w),
                            prefixIcon: Icon(
                              Icons.person_outline,
                              color: Colors.blue,
                            )),
                        style: TextStyle(fontSize: 20, color: w),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(7.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1 * 2, color: blue),
                              borderRadius: BorderRadius.circular(8)),
                          fillColor: brown,
                          filled: true,
                          labelText: "enter your password",
                          labelStyle: TextStyle(fontSize: 23, color: a),
                          hintText: "Enter password ",
                          hintStyle: TextStyle(fontSize: 20, color: w),
                          suffixIcon: IconButton(
                            icon: Icon(password_visible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                password_visible = !password_visible;
                              });
                            },
                          ),
                        ),
                        style: TextStyle(fontSize: 20, color: w),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: password_visible,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(7.0),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixText: "+216",
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1 * 2, color: blue),
                                borderRadius: BorderRadius.circular(8)),
                            fillColor: brown,
                            filled: true,
                            labelText: "enter your number",
                            labelStyle: TextStyle(fontSize: 23, color: a),
                            hintText: "Enter numbers ",
                            hintStyle: TextStyle(fontSize: 20, color: w),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.blue,
                            )),
                        style: TextStyle(fontSize: 20, color: w),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(7.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(20)),
                        ),
                        child: Text(
                          "Get value ",
                          style: TextStyle(fontSize: 33, color: b),
                        ),
                        onPressed: () => setState(() {
                          str = controller.text;
                        }),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )),
          floatingActionButton: FloatingActionButton(
            backgroundColor: w,
            onPressed: (() => setState(() {
                  b = b == Colors.black ? Colors.white : Colors.black;
                  w = w == Colors.white ? Colors.black : Colors.white;
                  a = a == Colors.red[300] ? Colors.blue : Colors.red[300];
                })),
          ),
        ));
  }
}
