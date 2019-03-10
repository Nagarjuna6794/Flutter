import 'package:flutter/material.dart';
import 'package:flutterstatefullwidgets/TextField.dart';
import 'package:flutterstatefullwidgets/Dropdown_buttons.dart';
import 'package:flutterstatefullwidgets/SimpleIntrestCalculatorApp.dart';


void main() {
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Intrest Calculator",
      home: SimpleIntrestCalculator(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent
      ),
    )
  );
}

