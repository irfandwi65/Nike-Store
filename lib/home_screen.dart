import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

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
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                      'Find Your Fast',
                      style: TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 30)
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                width: 350.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 4,
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 3,
                    )
                  ],
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration.collapsed(
                      hintText: "Search"
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text('Men'),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text('Women'),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text('Kid'),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text('Sale'),
                  ),
                ],
              ),
              Container(
                child: slider1(),
              ),
            ],
          ),
        ),
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
          iconSize: 70.0,
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


class slider1 extends Container{
  slider1():super(
    child: CarouselSlider.builder(
    options: CarouselOptions(
      aspectRatio: 2.0,
      enlargeCenterPage: false,
      viewportFraction: 1,
    ),
    itemCount: (imgList.length / 2).round(),
    itemBuilder: (context, index, realIdx) {
      final int first = index * 2;
      final int second = first + 1;
      return Row(
        children: [first, second].map((idx) {
          return Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Image.network(imgList[idx], fit: BoxFit.cover),
            ),
          );
        }).toList(),
      );
    },
    ),
  );
}
