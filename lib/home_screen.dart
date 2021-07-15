import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nike/item1.dart';
import 'package:nike/item2.dart';
import 'package:nike/item3.dart';
import 'package:nike/item4.dart';

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
        body: ListView(
          children: <Widget>[
            Padding(
            padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
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

                  CarouselSlider(
                    options: CarouselOptions(
                      height: 200.0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: cardList.map((card){
                      return Builder(
                          builder:(BuildContext context){
                            return Container(
                              height: MediaQuery.of(context).size.height*0.30,
                              width: MediaQuery.of(context).size.width,
                              child: Card(
                                color: Colors.blueAccent,
                                child: card,
                              ),
                            );
                          }
                      );
                    }).toList(),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(cardList, (index, url) {
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
                        ),
                      );
                    }),
                  ),
                ],
              ),
          ),

            new Padding(padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('See All'),
                  ),
                  Divider(
                    color: Colors.black12,
                    height: 20,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                ],
              ),
            ),


          ],
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

int _currentIndex=0;
List cardList=[
  Item1(),
  Item2(),
  Item3(),
  Item4()
];
List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}
