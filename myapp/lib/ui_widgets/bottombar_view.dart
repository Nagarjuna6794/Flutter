import 'package:flutter/material.dart';

class BottombarViewExample extends StatefulWidget {
  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottombarViewExample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Center(child:Text('Bottom Navigation bar'))
        ),
        body: TabBarView(
          children: <Widget>[
            NewPage("First"),
            NewPage("Second"),
            NewPage("Third"),
            NewPage("Four"),
            NewPage("Five"),
            NewPage("Six"),
            NewPage("Seven"),
            NewPage("Eight"),
          ],
          controller: _tabController,
        ),
        bottomNavigationBar: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.rss_feed),
            ),
            Tab(
              icon: Icon(Icons.perm_identity),
            ),
            Tab(
              icon: Icon(Icons.favorite),
            ),
             Tab(
              icon: Icon(Icons.settings),
            ),
             Tab(
              icon: Icon(Icons.email),
            ),
             Tab(
              icon: Icon(Icons.help),
            ),
             Tab(
              icon: Icon(Icons.album),
            )

          ],
          labelColor: Colors.yellow,
          unselectedLabelColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.red,
        ),
        backgroundColor: Colors.black,
      ),
    );
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
