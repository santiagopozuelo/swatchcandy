import 'package:flutter/material.dart';
import 'search_page.dart';

class MainPage extends StatefulWidget {
  static String tag = 'main-page';
  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {

    final botones = Container(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
        new Row(
        children: <Widget>[
            RaisedButton(
            onPressed: () {Navigator.of(context).pushNamed('SearchPage');},
        color: Colors.white,
        padding: EdgeInsets.all(10.0),
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[Icon(Icons.account_box), Text("Products")],
        )
    ),
        RaisedButton(
        onPressed: () {Navigator.of(context).pushNamed('BrandsPage');},
    color: Colors.white,
    padding: EdgeInsets.all(10.0),
    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
    child: Column(
    children: <Widget>[Icon(Icons.flare), Text("Brands")],
    )
    ),

    ],
    ),]));

    return Scaffold(
    appBar:

      new AppBar(


    actions: <Widget>[
    new IconButton(icon: new Icon(Icons.home), onPressed: null),
    new IconButton(
    icon: new Icon(Icons.exit_to_app),
    onPressed: () {
    Navigator.popUntil(context, ModalRoute.withName('/'));
    })
    ],
    ),
    body: Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(28.0),
    decoration: BoxDecoration(
    gradient: LinearGradient(colors: [
    Colors.blue,
    Colors.lightBlueAccent,
    ]),
    ),
    child: Column(
    children: <Widget>[botones],
    ),
    ),
    );


  }

}
