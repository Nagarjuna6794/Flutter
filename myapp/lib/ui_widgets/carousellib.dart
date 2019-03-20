import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:myapp/ui_widgets/horizontallistview.dart';
import 'package:myapp/ui_widgets/products.dart';


class CarouselViewLibExample extends StatefulWidget{
  @override
   CarouselView createState()=> CarouselView();
}

 class  CarouselView extends State<CarouselViewLibExample> {
  @override
  Widget build(BuildContext context) {
     Widget imagescarousel=Container(
       height: 200.0,
       child: Carousel(
         boxFit: BoxFit.cover,
         images: [
           AssetImage('images/drama.png'),
           AssetImage('images/banner_placeholder.jpg'),
           AssetImage('images/big_placeholder.jpg'),
           AssetImage('images/medium_placeholder.jpg'),
           AssetImage('images/pack_icon.png'),
         ],
         autoplay: true,
         animationCurve: Curves.fastOutSlowIn,
         animationDuration: Duration(milliseconds: 1000),
         dotSize: 4.0,
         indicatorBgPadding: 6.0,
       ),
     );

    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Lib Example"),
      ),
      body: ListView(
        children: <Widget>[
          imagescarousel,
          Padding(padding: EdgeInsets.all(10.0),
          child: Text('Categories'),
          ),
          HorizontalListExample(),
          HorizontalListExample(),
          Padding(padding: EdgeInsets.all(10.0),
          child: Text('Products'),),
          Container(
            height: 320,
            child: Products(),
          )
          
        ],
      ),
    );
  }
    
  }