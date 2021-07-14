import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen>{
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: Drawers(),
        backgroundColor: Colors.white,
        appBar: MyAppBar(),
        body: GridView.count(crossAxisCount: 2,
          children: <Widget>[
            Text('gambar1'),
            Text('gambar2'),
            Text('gambarr3'),
          ],
        )
    );
  }
}


class MyAppBar extends AppBar {
  MyAppBar():super(
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    automaticallyImplyLeading: false,
    leading: IconButton(
      iconSize: 30.0,
      icon: Icon(Icons.sort),
      onPressed: () {
        scaffoldKey.currentState!.openDrawer();
      }
    ),
    centerTitle: true,
    title: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          iconSize: 80.0,
          icon: Image.asset('assets/images/nike_logo.png'),
          onPressed: () {}
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.shopping_bag),
        onPressed: () {}
      ),
    ],
  );
}



class Drawers extends Drawer{
  Drawers():super(
    child: ListView(
      children: <Widget>[
        //header
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Colors.black26,
          ),
          accountName: Text('Irfan Dwi Wijaya'),
          accountEmail: Text('irfandwi@gmail.com'),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white,),
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('Home'),
            leading: Image.asset('assets/images/nike_logo.png', scale: 4.5,),
          ),
        ),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('My Account'),
            leading: Icon(Icons.person, color: Colors.black),
          ),
        ),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('My Orders'),
            leading: Icon(Icons.shopping_bag, color: Colors.black),
          ),
        ),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite, color: Colors.black),
          ),
        ),
      ],
    ),
  );
}