import 'package:flutter/material.dart';
import 'main_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class SwatchShade extends StatelessWidget {
  static String tag = 'SwatchShade';
  String shade;
  CollectionReference reference;

  SwatchShade(CollectionReference reference,String shade) {
    this.reference = reference;
    this.shade = shade;
  }

  Widget _buildList(BuildContext context, DocumentSnapshot snapshot, String shade ) {
    //print(snapshot);
    return Column(
      children: <Widget>[Text("hola")],
    );
    //if (shade == snapshot.data["swatch_shade"]) {
        //add to list that is presented

    //}

  }



  @override
  Widget build(BuildContext context) {

    return new Column(
      children: <Widget>[
        new Flexible(
            child:StreamBuilder(
              stream: reference.snapshots(),
                builder: (context, snapshot){
                  if (!snapshot.hasData){
                    return Container(
                      child: Center(
                        child: Text("No data")
                      )
                    );
                  }
                  //has snapshots
                  return ListView.builder(
                    padding: EdgeInsets.all(8.0),
                    //change so that i know exactly how many items
                    itemCount: 1,//snapshot.data.,
                    itemBuilder: (context, index) {
                      return _buildList(context, snapshot.data,shade );
                    },
                  );

                }
            )//stream

        ),
        Text("yeeet")


    ]);

  }
}
