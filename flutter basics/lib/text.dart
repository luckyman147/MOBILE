import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle s = TextStyle(color: Colors.white, fontSize: 23);
TextStyle S3 = TextStyle(color: Colors.black, fontSize: 23);

class Mytext extends StatelessWidget {
  String _text;
  TextStyle _textStyle;
  Mytext(this._text, this._textStyle);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: _textStyle,
    );
  }
}
