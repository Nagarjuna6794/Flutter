import 'package:flutter/material.dart';
import 'package:myapp/ui_widgets/newnavigationpage.dart';

class TabBarViewExample extends StatefulWidget {
  @override
  _TabBarViewState createState() => _TabBarViewState();
}

class _TabBarViewState extends State<TabBarViewExample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tab bar example"),
          bottom: TabBar(
            labelColor: Colors.indigo,
            unselectedLabelColor: Colors.blue,
            indicatorColor: Colors.red,
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                //icon: Icon(Icons.favorite),
                child: Text("Favourites"),
              ),
              Tab(
               // icon: Icon(Icons.email),
                child: Text("Email"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            NewPage("First"),
            SecondPage("Second"),
          ],
          controller: _tabController,
        ));
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String title;
  SecondPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
