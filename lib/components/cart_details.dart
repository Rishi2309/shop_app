import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_on_cart = [
    {
      "name": "Blazer",
      "pic": "images/products/blazer1.jpeg",
      "price": 750,
      "size": "7",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Red Dress",
      "pic": "images/products/dress1.jpeg",
      "price": 700,
      "size": "8",
      "color": "Red",
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: products_on_cart.length,
        itemBuilder: (context, index){
          return Single_cart_product(
            cart_prod_name: products_on_cart[index]["name"],
            cart_prod_picture: products_on_cart[index]["picture"],
            cart_prod_price: products_on_cart[index]["price"],
            cart_prod_size: products_on_cart[index]["size"],
            cart_prod_color: products_on_cart[index]["color"],
            cart_prod_quantity: products_on_cart[index]["quantity"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_quantity
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_picture, width:80.0, height:80.0,),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
//    ============================ This section is for product size =============================
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_size, style: TextStyle(color: Colors.red),),
                ),

//     =========================== This section is for product color =============================
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color"),),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color, style: TextStyle(color: Colors.red),),
                )
              ],
            ),

//      ======================== This is for product price ==========================================
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),

            ),
          ],
        ),
      ),
    );
  }
}

