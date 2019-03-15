import 'package:flutter/material.dart';
import 'package:myapp/ui_widgets/bottombar_view.dart';
import 'package:myapp/ui_widgets/checkboxexample.dart';
import 'package:myapp/ui_widgets/dynamic_listview.dart';
import 'package:myapp/ui_widgets/imagesexample.dart';
import 'package:myapp/ui_widgets/jsonparsingexample.dart';
import 'package:myapp/ui_widgets/navigationdrawerexample.dart';
import 'package:myapp/ui_widgets/raisedbuttonalertdialog.dart';
import 'package:myapp/ui_widgets/snackbar_example.dart';
import 'package:myapp/ui_widgets/static_listview.dart';
import 'package:myapp/ui_widgets/steeper_example.dart';
import 'package:myapp/ui_widgets/tab_bar_view.dart';
import 'package:myapp/ui_widgets/table_row_colum.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getListView(context);
  }
}

Widget getListView(BuildContext context) {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.list),
        title: Text("First screen example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_left),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ListViewWidgets();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.list),
        title: Text("Static List View"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_left),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ListViewWidgets();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.list),
        title: Text("Dynamic List View"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DynamicListView();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.list),
        title: Text("Images Example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.image),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ImagesExample();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.list),
        title: Text("Raised Button and Alert Dialog Example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_left),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return RasiedButtonAlertdialog();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.image),
        title: Text("Snack bar Example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_left),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SnackBarExample();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.image),
        title: Text("Table Row Example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_left),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TableRowColumn();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.image),
        title: Text("Json Parsing Example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_left),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return JsonParsingExample();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.image),
        title: Text("Navigation Drawer"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_left),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NavigationDrawerExample();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.image),
        title: Text("Stepper example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_left),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return StepperExample();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.image),
        title: Text("Bottombar example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_left),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return BottombarViewExample();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.image),
        title: Text("TabBar example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_left),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TabBarViewExample();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.image),
        title: Text("CheckBox example"),
        subtitle: Text("Open"),
        trailing: Icon(Icons.arrow_left),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CheckBoxExample();
          }));
        },
      ),
    ],
  );
  return listView;
}
