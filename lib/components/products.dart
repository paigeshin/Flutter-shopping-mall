import 'package:flutter/material.dart';
import 'package:first_project/pages/product_detail.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();

}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Product1",
      "picture": "images/products/product1.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "Product2",
      "picture": "images/products/product2.jpg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "Product3",
      "picture": "images/products/product3.jpg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "Product4",
      "picture": "images/products/product4.jpg",
      "old_price": 120,
      "price": 85
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return SingleProduct(
          productName: productList[index]['name'],
          productPicture: productList[index]['picture'],
          productOldPrice: productList[index]['old_price'],
          productPrice: productList[index]['price'],
        );
      },
    );
  }

}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  const SingleProduct({
    this.productName,
    this.productPicture,
    this.productOldPrice,
    this.productPrice
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: productName, child: Material(
        child:
        InkWell(
            //MaterialPageRoute가 intent 같은 역할을 한다.
            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails(
              //Here we are passing the values of the product to the prodcut details page
              productDetailName: productName,
              productDetailNewPrice: productPrice,
              productDetailOldPrice: productOldPrice,
              productDetailPicture: productPicture,
            ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                    title: Text("\$$productPrice", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800)),
                    subtitle: Text("\$$productOldPrice", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w800, decoration: TextDecoration.lineThrough)),
                ),
              ),
            child: Image.asset(productPicture, fit: BoxFit.cover)),
        ),
      ))
    );
  }

}