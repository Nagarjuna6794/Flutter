import 'package:flutter/material.dart';

class NavigationDrawerExample extends StatefulWidget {
  @override
  _NavigationDrawer createState() => new _NavigationDrawer();
}

class _NavigationDrawer extends State<NavigationDrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Nagarjuna Veeramalla'),
              accountEmail: Text('Example@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text('N'),
              ),
            ),
            ListTile(
                title: Text('Page One'),
                trailing: Icon(Icons.arrow_upward),
                leading: Icon(Icons.looks_one),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/a");
                }),
            ListTile(
              title: Text('Page two'),
              trailing: Icon(Icons.arrow_downward),
              leading: Icon(Icons.looks_two),
            ),
            Divider(),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              leading: Icon(Icons.closed_caption),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
