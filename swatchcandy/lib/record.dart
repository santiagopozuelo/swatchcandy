import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Record {

  String name;
  String brand;
  String imgUrl;
  String cost;
  String desc;
  String refUrl;
  String mult;
  List<dynamic> shade;
  CollectionReference linksRef;
  CollectionReference looksRef;
  CollectionReference swatchesRef;
  //final DocumentReference reference;

  Record(DocumentSnapshot snapshot) {
    //assert(map['product_name'] != null),
    //assert(map['product_brand'] != null),
    //assert(map['product_img_url'] != null),
    //assert(map['product_cost'] != null),
    //assert(map['product_referral_url'] != null),
    Map<String, dynamic> map = snapshot.data;
    name = map['product_name'];
    brand = map['product_brand'];
    imgUrl = map['product_img_url'];
    cost = map['product_cost'];
    desc = map['product_description'];
    refUrl = map['product_referral_url'];
    mult = map['product_multiple'].toString();
    //print(map["product_shade"]);

    try {
      shade = map['product_shade'];
    } on Exception {
      shade = null;
    }
    //shade = map['product_shade'];
    linksRef = map['links'];
    looksRef = map['looks'];
    swatchesRef = snapshot.reference.collection("swatches");
    //reference = snapshot.reference,
    }
  @override
  String toString() => "Record<$name:$brand>";
  }