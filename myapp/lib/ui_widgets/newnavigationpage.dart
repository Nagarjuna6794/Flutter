import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String title="New Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
  
}