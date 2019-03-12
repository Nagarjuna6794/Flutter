import 'package:flutter/material.dart';
import 'package:flutterstatefullwidgets/Dropdown_buttons.dart';
import 'package:flutterstatefullwidgets/SimpleIntrestCalculatorApp.dart';
import 'package:flutterstatefullwidgets/TextField.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List View"),),
        body: setExamples(context),
    );
}


Widget setExamples(BuildContext context){
  var listView = ListView(
    children: <Widget>[
       ListTile(
        leading: Icon(Icons.image),
        title: Text("Simple Intrest Calculator example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SimpleIntrestCalculator();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.arrow_drop_down),
        title: Text("Drop Down Example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DropDownButtons();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.image),
        title: Text("Text feild example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FavoriteCity();
          }));
        },
      ),
    ]
  );
  return listView;
}

}