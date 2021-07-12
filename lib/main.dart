import 'package:flutter/material.dart';
import 'package:nike/detail_screen.dart';
import 'package:nike/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Store',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}