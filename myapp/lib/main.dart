import 'package:flutter/material.dart';
import 'package:myapp/ui_widgets/home.dart';
import 'package:myapp/ui_widgets/newnavigationpage.dart';
import 'package:device_id/device_id.dart';

void main(){
 runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   title: "Exploring listview",
   theme: ThemeData(primarySwatch: Colors.green),
   routes: <String,WidgetBuilder>{
     "/a":(BuildContext context)=>new NewPage(),
   },
   home: Scaffold(
     appBar: AppBar(title: Text("Examples"),),
     body: Home(),
     floatingActionButton: FloatingActionButton(
       onPressed: () async {
         String deviceId=await DeviceId.getID;
         debugPrint("FAB Clicked "+deviceId);
       },
       child: Icon(Icons.add),
       tooltip: 'Add One more item',
     ),
   ),
 ));
}
  



