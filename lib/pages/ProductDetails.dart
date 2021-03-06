import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_old_price;
  final product_detail_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_old_price,
    this.product_detail_price,
    this.product_detail_picture
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
          child: Text('ShopApp'),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 320.0,
            child: GridTile(
                child: new Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
               footer: new Container(
                 color: Colors.white70,
                  child: new ListTile(
                    leading: new Text(widget.product_detail_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text('\$${widget.product_detail_old_price}',
                            style: TextStyle(fontSize: 14.0, decoration: TextDecoration.lineThrough) ,),
                        ),
                        Expanded(
                          child: new Text('\$${widget.product_detail_price}',
                            style: TextStyle(fontSize: 14.0) ,),
                        )
                      ],
                    ),
                  )
                ),
            ),
            
          ),
          Row(
            children: <Widget>[
              // ================== Size Button =======================
              Expanded(
                child: new MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text('Size'),
                      content: new Text('Choose the size'),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: new Text('Close'),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                  elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text('Size')),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),),
              ),
              // =================== Colors Button ======================
              Expanded(
                child: new MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text('Color'),
                          content: new Text('Choose the color'),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text('Close'),)
                          ],
                        );
                      });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text('Colors')),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),),
              ),
              // ==================== Quantity Button =====================
              Expanded(
                child: new MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text('Quantity'),
                          content: new Text('Choose the quantity'),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text('Close'),)
                          ],
                        );
                      });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text('Qty')),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),),
              )
            ],
            
          ),
          // =================== Second row buttons ==================
          Row(
            children: <Widget>[
              // ================== Buy Button =======================
              Expanded(
                child: new MaterialButton(onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text('Buy now'),
                ),
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: (){}),

              new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: (){}),

            ],

          ),

          Divider(),

          new ListTile(
            title: new Text('Product Details'),
            subtitle: new Text('simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
          ),

          Divider(),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text('Product Name', style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(0.5),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text('Product Brand', style: TextStyle(color: Colors.grey)),
              ),
              Padding(padding: EdgeInsets.all(0.5),
                child: new Text('Brand X'),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text('Product Condition', style: TextStyle(color: Colors.grey)),
              ),
              Padding(padding: EdgeInsets.all(0.5),
                child: new Text('New'),
              )
            ],
          ),




        ],
      )

    );
  }
}
