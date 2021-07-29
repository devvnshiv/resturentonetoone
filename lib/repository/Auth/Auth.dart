import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onetooneres/db/databasepath/collectionpath.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Authrepo {

  Future<bool> userCheck() async{
    final sanpshot = await users.doc("+918861653054").get();

    if (sanpshot.exists) {
      return false;
    }
    return true;
  }

  Future<bool> addresturent(Map<String, dynamic> parms) async{
    bool a = false ;
    int randomid = Random().nextInt(1000000);
    parms["id"]=randomid;
    await users.doc(parms["Phone"]).set(
      parms
    ).then((value) => a = true ).onError((error, stackTrace) => a = false );
return a;
  }


  Future<bool> getdetailes(String phone) async {
    var docd = await firestore.collection('rest').doc(phone).get(
    );
    var check = docd.data();
  //  print(docd.data()["Username"]);
    if (check == null) {
      return false;
    } else {
      final prefs = await SharedPreferences.getInstance();
      print(docd.data()["id"]);
      await prefs.setInt('id', docd.data()['id']);
      await prefs.setString('phone', docd.data()['Phone']);
      await prefs.setString('name', docd.data()['restaurantname']);
      return true;

    }
  }




}