//inbuilt libraries importing
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//our own importing
import 'package:shop_app/components/horizontal_list_view.dart';

void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),

        ],
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        autoplay: false,

      ),
    );
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
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName:  Text('demo'),
                accountEmail: Text('demo@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red
                ),
                ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Profile'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Help'),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            ),

          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          
          //Categories Title
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories',style: TextStyle(fontSize: 20.0),),
          ),
          HorizontalList(),

        ],

      ),
    );

  }
}
