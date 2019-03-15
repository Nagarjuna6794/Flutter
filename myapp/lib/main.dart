import 'package:flutter/material.dart';
import 'package:myapp/ui_widgets/home.dart';
import 'package:myapp/ui_widgets/newnavigationpage.dart';


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
       onPressed: (){
         debugPrint("FAB Clicked");
       },
       child: Icon(Icons.add),
       tooltip: 'Add One more item',
     ),
   ),
 ));
}
  



