import 'package:flutter/material.dart';
import 'package:myapp/app_screens/firstscreen.dart';

void main()=>runApp(new MyFlutterApp());
  

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title:"My Flutter app",
     home:Scaffold(
     appBar: AppBar(
     title:Text("My First app screen",
     textAlign:TextAlign.center,
     style: TextStyle(color:Colors.white,),),),
     body: Firstscreen()
)  
);
}  
}

