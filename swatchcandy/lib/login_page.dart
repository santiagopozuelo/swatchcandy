import 'package:flutter/material.dart';
import 'home_page.dart';
import 'forgot_password.dart';
import 'package:flutter/foundation.dart';
import 'sign_up.dart';
import 'forgot_password.dart';
import 'main.dart';
//import 'package:login/validate.dart';
//import 'package:login/signup.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'LoginPage';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //validate _validation = new validate();


  TextEditingController myUser = TextEditingController();
  TextEditingController myPass = TextEditingController();
  String _user = "";
  String _pass = "";
/*
  Future<bool> onSubmit() async {
    bool yeet = await _validation.getJsonData(_user, _pass);
    print(_user);
    print(_pass);
    print(yeet);
    return yeet;
  }
*/

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final email = TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      onChanged: (input)=> _user = input,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextField(
      autofocus: false,
      onChanged: (input2) =>_pass = input2,
      //initialValue: null,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );


    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed:() async {
          //bool _test = await onSubmit();
          if( /*_test == */true) {
            //print('yeet');
            Navigator.pushNamed(context,"MainPage");
          }
          else{
            print("hola");
            //Scaffold.of(context).showSnackBar(new SnackBar(content: Text("incorrect user or pass")));

          }},
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {Navigator.pushNamed(context, "ForgotPass");},
    );

    final Sign_up = FlatButton(
      child: Text(
        'Sign Up!',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {Navigator.pushNamed(context, 'SignUp');},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
            Sign_up
          ],
        ),
      ),
    );
  }
}
