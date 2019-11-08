import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  static String tag = 'forgot-pass';
  @override
  _ForgotPassState createState() => new _ForgotPassState();
}
class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {

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

    final label = new Text(
      'Insert your email',
      style: TextStyle(color: Colors.black54),
    );

    final emailButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: null,
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('send password', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            label,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            emailButton
          ],
        ),
      ),
      appBar: new AppBar(actions: <Widget>[
        new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: () {Navigator.popUntil(context, ModalRoute.withName('/'));})
      ],),
    );
  }
}