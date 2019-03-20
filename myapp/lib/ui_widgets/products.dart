import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productsLits = [
    {
      "name": "Home",
      "picture": "images/red_home.png",
      "Price": "150",
      "NewPrice": "250",
    },
    {
      "name": "Drama",
      "picture": "images/drama.png",
      "Price": "120",
      "NewPrice": "260",
    },
    {
      "name": "Live",
      "picture": "images/black_live.png",
      "Price": "120",
      "NewPrice": "260",
    },
    {
      "name": "Videos",
      "picture": "images/black_video.png",
      "Price": "120",
      "NewPrice": "260",
    },
    {
      "name": "New",
      "picture": "images/black_new.png",
      "Price": "120",
      "NewPrice": "260",
    },
    {
      "name": "Pack",
      "picture": "images/pack_icon.png",
      "Price": "120",
      "NewPrice": "260",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productsLits.length,
      shrinkWrap: true,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext contex, int index) {
        return SingleProduct(
          prodName: productsLits[index]['name'],
          prodPicture: productsLits[index]['picture'],
          prodOldPrice: productsLits[index]['Price'],
          prodNewPrice: productsLits[index]['NewPrice'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodNewPrice;

  SingleProduct(
      {this.prodName, this.prodPicture, this.prodOldPrice, this.prodNewPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prodName,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                // child: ListTile(
                //   leading: Text(prodName),
                //   title: Text('\$$prodNewPrice'),
                //   subtitle: Text('\$$prodOldPrice'),
                // ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(prodName),
                    ),
                    Text('\$$prodNewPrice')
                  ],
                ),
              ),
              child: Image.asset(
                prodPicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
