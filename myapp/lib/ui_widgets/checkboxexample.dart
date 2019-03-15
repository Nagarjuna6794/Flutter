import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxExample> {
  bool isChecked = false;

  void onChanged(bool value) {
    setState(() {
      isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Check Box example"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Text("Click it"),
                  Checkbox(value: isChecked,onChanged: (bool value) {onChanged(value);
                    },
                  )
                ]),
                CheckboxListTile(
                  title: Text("Click "),
                  value: isChecked,
                  onChanged: (bool value){
                    onChanged(value);
                  },
                  activeColor: Colors.red,
                  secondary: Icon(Icons.home),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
