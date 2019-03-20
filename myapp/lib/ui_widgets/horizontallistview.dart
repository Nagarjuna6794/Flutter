import 'package:flutter/material.dart';

class HorizontalListExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imagelocation: 'images/black_live.png',
            imagecaption: 'Live',
          ),
          Category(
            imagelocation: 'images/black_radio.png',
            imagecaption: 'Radio',
          ),
          Category(
            imagelocation: 'images/black_video.png',
            imagecaption: 'Videos',
          ),
          Category(
            imagelocation: 'images/black_movie.png',
            imagecaption: 'Movies',
          ),
          Category(
            imagelocation: 'images/black_new.png',
            imagecaption: 'New Releases',
          ),
          Category(
            imagelocation: 'images/red_home.png',
            imagecaption: 'Home',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;

  Category({
    this.imagelocation,
    this.imagecaption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
          child: Container(
            width: 100.0,
        child: ListTile(
          title: Image.asset(imagelocation,
          width: 100.0,
          height: 80.0,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(imagecaption),
          )
        ),
      )),
    );
  }
}
