import 'package:flutter/material.dart';

class ImagesExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Center(
        child: Container(
            padding: EdgeInsets.only(left:10.0,top: 40.0),
            alignment: Alignment.center,
            color: Colors.orange,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Spice Jet",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "From Mumbai to Banglore via New Delhi",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Air India",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "From Jaipur to Goa",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ))
                  ],
                ),
                ImagesAsset()
              ],
            )));
  }
}

class ImagesAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage=AssetImage('images/drama.png');
    Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image);
  }

}
