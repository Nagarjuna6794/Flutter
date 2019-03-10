import 'package:flutter/material.dart';
import 'package:myapp/app_screens/firstscreen.dart';
import 'package:myapp/ui_widgets/home.dart';
import 'package:myapp/ui_widgets/table_row_colum.dart';
import 'package:myapp/ui_widgets/imagesexample.dart';
import 'package:myapp/ui_widgets/raisedbuttonalertdialog.dart';
import 'package:myapp/ui_widgets/static_listview.dart';
import 'package:myapp/ui_widgets/dynamic_listview.dart';
import 'package:myapp/ui_widgets/snackbar_example.dart';


void main(){
 runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   title: "Exploring listview",
   home: Scaffold(
     appBar: AppBar(title: Text("Dynamic List View"),),
     body: SnackBarExample(),
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
  



