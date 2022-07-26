import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:path//Users/thanmaisai/Hospicare-Project/lib/ui/authentication.dart';

class HomeView extends StatefulWidget {
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
