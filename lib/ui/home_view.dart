// ignore_for_file: library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Hospicare ( Username )",
          style: TextStyle(
              //fontFamily: 'TrajanPro'
              color: Colors.grey[800],
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.normal,
              fontFamily: 'SourceCodePro',
              fontSize: 20),
        )),
        body: Container(
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(
              'Welcome to Hospicare',
              style: TextStyle(
                  //fontFamily: 'TrajanPro'
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'SourceCodePro',
                  fontSize: 30),
            ),
          ),
        ));
  }
}
