import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'record.dart';
import 'product_page.dart';
//import '';

class SearchPage extends StatelessWidget {
  static String tag = 'search-page';
  //Set<String> subSet = new HashSet<String>();
  


  Widget _buildList(BuildContext context, DocumentSnapshot document) {
    final record = Record.fromSnapshot(document);
    //print(record);
    return ListTile(
      title: Text(document['product_name']),
      subtitle: Text(document['product_brand']),
      //onTap:() {Navigator.of(context).pushNamed(ProductPage.tag)},
      onTap: () {
        Navigator.push(
          context,
            MaterialPageRoute(builder: (context) => ProductPage(record: record)),

        );
        //Navigator.pushNamed(context, 'ProductPage', arguments : record);
        //MaterialPageRoute(builder: (context) => MyProductPage(record: record))
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Datos"),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.home),
                onPressed: () {
                  Navigator.of(context).pushNamed(HomePage.tag);
                }),
            new IconButton(
                icon: new Icon(Icons.exit_to_app),
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                })
          ],
        ),
        body: StreamBuilder(
            stream: Firestore.instance.collection('products').snapshots(),
            builder: (context, snapshot) {

              if (!snapshot.hasData) {
                return Text("Loading..");
              }
              return ListView.builder(
              itemExtent: 80.0,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
              return _buildList(context, snapshot.data.documents[index]);
              }
              );
            }
        )
    );
    }
}
