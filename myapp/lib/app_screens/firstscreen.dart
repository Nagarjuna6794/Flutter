import 'dart:math';

import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var text = Text(generateLuckyNumber(),
     textDirection:TextDirection.ltr,
     style: TextStyle(color:Colors.white,fontSize:40.00),
     );
    return Material(
     color: Colors.lightBlue,
     child: Center(child:text,
   ),
  );
  }
  
  String generateLuckyNumber() {
     var random= Random();   
     int luckyNumber=random.nextInt(10);
     return "Your Lucky number is $luckyNumber";
  }
}