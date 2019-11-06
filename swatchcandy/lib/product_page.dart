import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'about_page.dart';
import 'search_page.dart';
import 'record.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductPage extends StatelessWidget {
  final Record record;
  ProductPage({Key key, @required this.record}) : super(key: key);

  _launchURL() async {
    var url = record.refUrl;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }




  @override
  Widget build(BuildContext context) {
    //print(record.name);
    return Scaffold(
        appBar: AppBar(
            title: Text(record.name)
        ),
        body: Container(
          padding: EdgeInsets.all(24.0),
          child: Center(
              child: Column(
                children: <Widget>[
                  Image.network(record.imgUrl),
                  Text(record.name),
                  Text(record.brand),
                  Text(record.cost),
                  Text(record.shade),
                  RaisedButton(
                    onPressed: _launchURL,
                    child: Text('Buy'),
                  ),
                  Text(record.desc),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Go back!'),
                  ),
                ],
              )
          ),
        )
    );
  }


}