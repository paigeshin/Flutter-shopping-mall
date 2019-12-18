import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final productDetailName;
  final productDetailNewPrice;
  final productDetailOldPrice;
  final productDetailPicture;

  ProductDetails({
    this.productDetailName,
    this.productDetailNewPrice,
    this.productDetailOldPrice,
    this.productDetailPicture
  });

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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

      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  //다른 화면에서 넘어온 값들 정의
                  child: Image.asset(widget.productDetailPicture),
                ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.productDetailName),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("${widget.productDetailOldPrice}",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough))
                      ),
                      Expanded(
                          child: Text("${widget.productDetailNewPrice}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red))
                      ),
                    ],
                  )
                )
              )
            ),
          ),

          // ============ The first buttons ============

          Row(
            children: <Widget>[

              // ============ The size buttons ============
              Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text('Size'),
                            content: Text('Choose the size'),
                            actions: <Widget>[
                              MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: Text('close'),),
                            ]
                          );
                        });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text('Size')
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),)
              ),
              // ============ The size buttons ============
              Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                                title: Text('Color'),
                                content: Text('Choose the color'),
                                actions: <Widget>[
                                  MaterialButton(onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                    child: Text('close'),),
                                ]
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text('Color')
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),)
              ),

              // ============ The size buttons ============
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                              title: Text('Quantity'),
                              content: Text('Choose the quantity'),
                              actions: <Widget>[
                                MaterialButton(onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                  child: Text('close'),),
                              ]
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text('Qty')
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // ============ The Second buttons ============

          Row(
            children: <Widget>[
              // ============ The size buttons ============
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text('Buy Now'),
                  )
              ),

              IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red, onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){}),

            ],
          ),

          Divider(),

          ListTile(
            title: Text('Product Details'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tempus egestas sed sed risus pretium quam vulputate dignissim. Vel pretium lectus quam id leo in vitae turpis massa. A condimentum vitae sapien pellentesque habitant. Sed vulputate odio ut enim blandit volutpat maecenas volutpat blandit. A arcu cursus vitae congue mauris rhoncus. Erat pellentesque adipiscing commodo elit at imperdiet dui. Sem fringilla ut morbi tincidunt. Ac turpis egestas sed tempus urna. At in tellus integer feugiat scelerisque varius morbi enim.'),
          ),

          Divider(),
          
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text('Product name', style: TextStyle(color: Colors.grey))),
              Padding(padding: EdgeInsets.all(5.0),
                  child: Text(widget.productDetailName),)
            ],
          ),

          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text('Product brand', style: TextStyle(color: Colors.grey))),

              //REMEMBER TO CREATE THE PRODUCT BRAND
              Padding(padding: EdgeInsets.all(5.0),
                  child: Text('Brand X'),)
            ],
          ),

          //ADD THE PRODUCT CONDITION
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text('Product condition', style: TextStyle(color: Colors.grey))),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("NEW"),)
            ],
          ),

        ],
      )
    );
  }
}