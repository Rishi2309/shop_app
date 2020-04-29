import 'package:flutter/material.dart';
import 'package:shop_app/components/cart_details.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){}),
        ],
      ),

      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: new Row(
          children: <Widget>[
            Expanded(
              child: new ListTile(
                title: new Text("Total"),
                subtitle: new Text("\$230"),
              ),
            ),

            Expanded(
              child: new MaterialButton(onPressed: (){},
              child: new Text("Check out", style: TextStyle(color: Colors.white),),
              color: Colors.red,),
            )

          ],
        ),
      ),
    );
  }
}
