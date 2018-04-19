import 'package:flutter/material.dart';
import 'pages/calc.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Tip Calculator',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CalcPage(title: 'Tip Calculator'),
    );
  }
}
