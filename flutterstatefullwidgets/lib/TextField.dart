import 'package:flutter/material.dart';

class FavoriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
  
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful app example"),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                onSubmitted: (String userInput){
                  setState((
                  ) {
                    nameCity=userInput;
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
              child:Text(
                 "Your text city is $nameCity",
                 style: TextStyle(fontSize: 20.0),
              )
              )
            ],
          ),
        ),
    );
  }
  
}