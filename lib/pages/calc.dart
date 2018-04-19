import 'package:flutter/material.dart';

class CalcPage extends StatelessWidget {
  CalcPage({Key key, this.title}) : super(key: key);

  final String title;

  double billAmount = 0.0;
  double tipPercentage = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Column(
        children: <Widget>[
          new TextField(
            decoration: new InputDecoration(
              labelText: 'Bill amount(\$)',
            ),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              try {
                billAmount = double.parse(value);
              } catch (exception) {
                billAmount = 0.0;
              }
            },
          ),
          new TextField(
            decoration: new InputDecoration(
              labelText: 'Tip %',
            ),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              try {
                tipPercentage = double.parse(value);
              } catch (exception) {
                tipPercentage = 0.0;
              }
            },
          ),
          new RaisedButton(
            child: new Text("Calculate"),
            onPressed: () {
              double calculatedTip = billAmount * tipPercentage / 100.0;
              double total = billAmount + calculatedTip;

              AlertDialog dialog = new AlertDialog(
                  content: new Text("Tip: \$$calculatedTip \n"
                      "Total: \$$total"));

              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return dialog;
                  });
            },
          ),
        ],
      ),
    );
  }
}
