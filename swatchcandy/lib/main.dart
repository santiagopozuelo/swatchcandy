import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'about_page.dart';
import 'search_page.dart';
import 'product_page.dart';
import 'main_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    'HomePage': (context) => HomePage(),
    'AboutPage': (context) => AboutPage(),
    'SearchPage': (context) => SearchPage(),
    'ProductPage': (context) => ProductPage(),
    'MainPage' : (context) => MainPage(),

    //HomePage.tag: (context) => HomePage()

  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: HomePage(),
      routes: routes,
    );
  }
}
