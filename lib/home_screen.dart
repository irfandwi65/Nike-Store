import 'package:flutter/material.dart';
import 'package:nike/my_flutter_app_icons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            bottomOpacity: 0.0,
            elevation: 0.0,
            leading: IconButton(
              iconSize: 30.0,
              color: Colors.black,
              icon: Icon(
                  Icons.sort
              ),
              onPressed: () {},
            ),
            centerTitle: true,
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget> [
                  IconButton(
                    iconSize: 70.0,
                    icon: Image.asset('images/nike_logo.png'),
                    onPressed: () {},
                  ),
                ],
              ),
            actions: [
              IconButton(
                iconSize: 30.0,
                color: Colors.black,
                icon: Icon(Icons.shopping_bag),
                onPressed: () {},
              ),
            ], // actions
        ),

        body: Center(
          child: Container(
            child: Text('ini text'),
        ),
      ),
    );
  }
}
