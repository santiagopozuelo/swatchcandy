import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Record {

  final String name;
  final String brand;
  final String imgUrl;
  final String cost;
  final String desc;
  final String refUrl;
  final String mult;
  final String shade;
  final CollectionReference linksRef;
  final CollectionReference looksRef;
  final CollectionReference swatchesRef;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['product_name'] != null),
        assert(map['product_brand'] != null),
        assert(map['product_img_url'] != null),
        assert(map['product_cost'] != null),
  //assert(map['product_description'] != null),
        assert(map['product_referral_url'] != null),
  //assert(map['product_multiple'] != null),
  //assert(map['links'] != null),
  //assert(map['looks'] != null),
  //assert(map['swatches'] != null),
        name = map['product_name'],
        brand = map['product_brand'],
        imgUrl = map['product_img_url'],
        cost = map['product_cost'],
        desc = map['product_description'],
        refUrl = map['product_referral_url'],
        mult = map['product_multiple'].toString(),
        shade = map['product_shade'].toString(),
        linksRef = map['links'],
        looksRef = map['looks'],
        swatchesRef = map['swatches'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);


  @override
  String toString() => "Record<$name:$brand>";
}