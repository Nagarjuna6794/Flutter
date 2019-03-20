import 'package:flutter/material.dart';

class ListViewWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Static List View"),
      ),
      body:getListview()
    );
  }
}



Widget getListview() {
  var listview = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View !"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
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
      Container(
        color: Colors.red,
        height: 50.0,
      )
    ],
  );
  return listview;
}


// Center(
//         child:  ListView(
//           children: <Widget>[
//             Container(
//               height: 20.0,
//               child: Text("Genre"),
//             ),
//              Container(
//               height: 80.0,
//               child:  ListView(
//                 scrollDirection: Axis.horizontal,
//                 children:  List.generate(10, (int index) {
//                   return  Card(
//                     color: Colors.blue[index * 100],
//                     child:  Container(
//                       width: 50.0,
//                       height: 50.0,
//                       child:  Text("$index"),
//                     ),
//                   );
//                 }),
//               ),
//             ),
//           ],
//         ), 
//       ),
