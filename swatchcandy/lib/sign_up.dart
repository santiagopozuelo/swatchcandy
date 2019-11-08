import 'package:flutter/material.dart';
import 'home_page.dart';

class SignUp extends StatefulWidget {
  static String tag = 'signup-page';
  @override
  _SignUpState createState() => new _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {

    final sign_up = Padding(
      padding: EdgeInsets.all(15.0),
      child: Text(
        'Sign Up',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 38.0, color: Colors.blue),
      ),
    );

    final username = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: null,
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: null,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final password = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: null,
      decoration: InputDecoration(
        hintText: 'password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final fenty = TextFormField(
      keyboardType: TextInputType.number,
      autofocus: false,
      initialValue: null,
      decoration: InputDecoration(
        hintText: 'fenty shade',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final label = new Text(
      'Insert your information',
      style: TextStyle(color: Colors.black54),
    );

    final emailButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed:() {
          //final user = new User(values)
          Navigator.pushNamed(context,"HomePage");},
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Submit Account Information', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            sign_up,
            label,
            SizedBox(height: 2.0),
            username,
            SizedBox(height: 8.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 8.0),
            fenty,
            SizedBox(height: 8.0),
            emailButton
          ],
        ),
      ),
      appBar: new AppBar(
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.exit_to_app),
              onPressed: () {

                Navigator.popUntil(context, ModalRoute.withName('/'));
              })
        ],
      ),
    );
  }
}

/*
return Scaffold(
appBar: new AppBar(actions: <Widget>[
new IconButton(icon: new Icon(Icons.home), onPressed: () {Navigator.of(context).pushNamed(HomePage.tag);}),
new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: () {Navigator.popUntil(context, ModalRoute.withName('/'));})
],),
body: body,
);*/
