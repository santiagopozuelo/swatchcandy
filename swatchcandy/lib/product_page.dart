import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'about_page.dart';
import 'search_page.dart';
import 'record.dart';
import 'package:url_launcher/url_launcher.dart';
import 'swatch_shade.dart';

class ProductPage extends StatelessWidget {
  //List<String> yeet = ["hola1","hola2"];

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
//products multiple = true
  Widget _buildSwatches(BuildContext context,String data) {
    //var li = record.swatchesRef.snapshots();

    /*return StreamBuilder<QuerySnapshot>(
      stream: record.swatchesRef.snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();
        return _buildList(context, snapshot.data.documents);
      },
    );*/

    return ListTile(
      title: Text(data),
      onTap: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => SwatchShade(record.swatchesRef,data))
        //record.swatchesRef.snapshots(),)
        );

      });
  }
  //if product_multiple == false
  //build list of faces (when click a type? if want to appear beneath product have to do this chwck in searchpage
  Widget _buildFaces(BuildContext,data) {
    return ListTile(
        title: Text(
            data)
    );

  }

  Widget _buildShade(BuildContext context,String data) {
    if (record.mult == 'true') {
      return _buildSwatches(context, data);
    } else {
      return _buildFaces(context,data);
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
          child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.network(record.imgUrl),
                  Text(record.name),
                  Text(record.brand),
                  Text(record.cost),
                  Text("swatches"),

                  RaisedButton(
                    onPressed: _launchURL,
                    child: Text('Buy'),
                  ),

                  Text(record.desc),
                  Text("Shades"),
                  //Text(record.swatchesRef.),//.document([string]),
                  Container(
                      child: ListView.builder(
                        shrinkWrap: true,

                        //padding: const EdgeInsets.only(top: 20.0),
                        itemExtent: 80,
                        itemBuilder: (context, index) {
                          return _buildShade(context, record.shade[index]);
                        },
                        itemCount: record.shade.length,
                      ),
                    ),
                    //Text(record.shade.toString()),
                    //children: record.shade.map((data) => _buildShade(context,data)).toList()),
                  //_buildShade(context, record.mult),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Go back!'),
                  ),
                ],
              )
          )
          ),


    );
  }


}