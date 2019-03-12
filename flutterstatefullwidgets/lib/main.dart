import 'package:flutter/material.dart';
import 'package:flutterstatefullwidgets/TextField.dart';
import 'package:flutterstatefullwidgets/Dropdown_buttons.dart';
import 'package:flutterstatefullwidgets/SimpleIntrestCalculatorApp.dart';
import 'package:flutterstatefullwidgets/home.dart';


void main() {
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Examples",
      home: Home(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent
      ),
    )
  );
}


