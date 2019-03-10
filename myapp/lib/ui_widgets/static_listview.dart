import 'package:flutter/material.dart';

class  ListViewWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getListview();
  }
  
}

Widget getListview(){
  var listview =ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View !"),
        trailing: Icon (Icons.wb_sunny),
        onTap: (){
          debugPrint("Landscape tapped");
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),
      Text("Yet another element in list"),
      Container(color: Colors.red,height: 50.0,)
    ],
  );
  return listview;
}