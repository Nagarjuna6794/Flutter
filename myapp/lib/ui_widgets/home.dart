import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.orange,
        //width: 200.0,
        //height: 100.0,
        //margin: EdgeInsets.only(right:35.0,left:35.0),
        child: Text(
          "Text",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 25.0,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.normal,
              color: Colors.white),
        ),
      ),
    );
  }
}
