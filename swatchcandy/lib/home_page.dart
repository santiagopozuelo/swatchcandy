import 'package:flutter/material.dart';
import 'main_page.dart';



class HomePage extends StatelessWidget {
  static String tag = 'HomePage';
  @override



  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 150.0,
        child: Image.asset('assets/logo.png'),
      ),
    );


    final EnterButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed:() { Navigator.pushNamed(context, 'LoginPage');},
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Enter', style: TextStyle(color: Colors.white)),
      ),
    );

    final AboutButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed:() {Navigator.pushNamed(context, 'AboutPage');},
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('About', style: TextStyle(color: Colors.white)),
      ),
    );



    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            EnterButton,
            AboutButton,
          ],
        ),
      ),
    );
  }
}
