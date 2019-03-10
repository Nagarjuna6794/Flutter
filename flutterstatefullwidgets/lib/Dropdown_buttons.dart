import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class DropDownButtons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<DropDownButtons> {
  String nameCity = "";
  var currencies = ['Rupees', 'Dollars', 'Pounds', 'Others'];
  var __currentItemSelected = 'Rupees';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful app example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            DropdownButton<String>(
              items: currencies.map((String dropDownStringitem) {
                return DropdownMenuItem(
                  value: dropDownStringitem,
                  child: Text(dropDownStringitem),
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                _dropDownSelected(newValueSelected);
              },
              value: __currentItemSelected,
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Your text city is $nameCity",
                  style: TextStyle(fontSize: 20.0),
                ))
          ],
        ),
      ),
    );
  }

  void _dropDownSelected(String newValue) {
    setState(() {
      this.__currentItemSelected = newValue;
    });
  }
}
