//Library Import
import 'package:flutter/material.dart'; //it allows you to use the material design
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:first_project/components/horizontal_listview.dart';
import 'package:first_project/components/products.dart';

//기본구조
/*
new MaterialApp(
  Property: Widget(
      Property: Widget()
    )
)

Widget - Property
Widget - Property
이 패턴이 계속 반복됨.

 */
//Column, Row widget allows to have multiple widgets
//ListView, GridView
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    )
  );
}

//Stateless Widget, Stateful Widget
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget imageCarousel = Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carousels/city1.jpeg'),
          AssetImage('images/carousels/city2.jpeg'),
          AssetImage('images/carousels/city3.jpg'),
          AssetImage('images/carousels/city4.jpg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
//        animationCurve: Curves.fastOutSlowIn,
//        animationDuration: Duration(microseconds: 1000),
      )
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (){}),
          IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.white), onPressed: (){}),
        ]
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[

            //Header for Drawer
            UserAccountsDrawerHeader(
              accountName: Text('Paige Shin'),
              accountEmail: Text('grossocus@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person)
                )
              ),
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),

            //Body For Drawer
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.add_shopping_cart)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('Categories'),
                  leading: Icon(Icons.dashboard)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('Favorites'),
                  leading: Icon(Icons.favorite)
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.blue)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.green)
              ),
            ),
          ],
        )
      ),

        body: ListView(
        children: <Widget>[
          //image carousel begins here
          imageCarousel,

          //padding widget
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Categories'),),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          Padding(padding: const EdgeInsets.all(12.0),
          child: Text('Recent products'),),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )


        ],
      )
    );
  }
}
