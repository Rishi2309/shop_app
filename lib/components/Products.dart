import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "pic": "images/products/blazer1.jpeg",
      "old_price": 1500,
      "price": 750
    },
    {
      "name": "Red Dress",
      "pic": "images/products/dress1.jpeg",
      "old_price": 800,
      "price": 700
    },
    {
      "name": "Blazer ",
      "pic": "images/products/blazer2.jpeg",
      "old_price": 1200,
      "price": 750
    },
    {
      "name": "Black Dress",
      "pic": "images/products/dress2.jpeg",
      "old_price": 750,
      "price": 650
    },
    {
      "name": " Heals",
      "pic": "images/products/hills1.jpeg",
      "old_price": "400",
      "price": "350"
    },
    {
      "name": "Pant",
      "pic": "images/products/pants2.jpeg",
      "old_price": "500",
      "price": 250
    },
    {
      "name": " Heals",
      "pic": "images/products/hills2.jpeg",
      "old_price": 1500,
      "price": 750
    },
    {
      "name": "Black Pant",
      "pic": "images/products/pants1.jpg",
      "old_price": 1500,
      "price": 750
    },
    {
      "name": "Skirt",
      "pic": "images/products/skt2.jpeg",
      "old_price": 700,
      "price": 550
    }

  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['pic'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$prod_old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration
                                :TextDecoration.lineThrough),
                      ),
                    ),

                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.fitHeight,
                  )
                  ),
            ),
          )),
    );
  }
}