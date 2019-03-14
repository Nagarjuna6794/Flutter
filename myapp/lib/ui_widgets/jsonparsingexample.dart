import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JsonParsingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Json Parsing Example',
       // theme: new ThemeData(primarySwatch: Colors.blue),
        home: new MyJsonView());
  }
}

class MyJsonView extends StatefulWidget {
  @override
  _MyJsonPage createState() => new _MyJsonPage();
}

class _MyJsonPage extends State<MyJsonView> {
  Future<List<User>> _getUsers() async {
    var data = await http
        .get("http://www.json-generator.com/api/json/get/cfwZmvEBbC?indent=2");

    var jsonData = json.decode(data.body);

    List<User> users = [];

    for (var u in jsonData) {
      User user =
          User(u["index"], u["about"], u["name"], u["email"], u["picture"]);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: Text('Loading...'),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(snapshot.data[index].picture),
                    ),
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].email),
                    onTap: () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context)=>DetailsPage(snapshot.data[index])
                      ));
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final User user;
  DetailsPage(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
    );
  }
}

class User {
  final int index;
  final String about;
  final String name;
  final String email;
  final String picture;

  User(this.index, this.about, this.name, this.email, this.picture);
}