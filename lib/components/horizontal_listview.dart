import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/categories/tshirt.jpg',
            imageCaption: 'tshirt',
          ),
          Category(
            imageLocation: 'images/categories/shoes.jpg',
            imageCaption: 'shoes',
          ),
          Category(
            imageLocation: 'images/categories/jeans.jpeg',
            imageCaption: 'jeans',
          ),
          Category(
            imageLocation: 'images/categories/formal.jpg',
            imageCaption: 'formal',
          ),
          Category(
            imageLocation: 'images/categories/dress.jpeg',
            imageCaption: 'dress',
          ),
          Category(
            imageLocation: 'images/categories/casual.jpg',
            imageCaption: 'casual',
          ),
//          Category(
//            imageLocation: 'images/categories/accessories.jpg',
//            imageCaption: 'accessories',
//          ),
        ]
      )
    );
  }

}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({
    this.imageLocation,
    this.imageCaption
  });

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: (){},
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                imageLocation,
                width: 100.0,
                height: 60.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(imageCaption, style: TextStyle(fontSize: 12.0),),
            )
          ),
        ),
      ),
    );
  }

}