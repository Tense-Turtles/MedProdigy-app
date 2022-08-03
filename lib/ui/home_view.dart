// ignore_for_file: library_private_types_in_public_api, unused_import, duplicate_ignore, prefer_const_constructors, sized_box_for_whitespace,prefer_const_literals_to_create_immutables

// ignore: unused_import
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
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var screens = [
      ListView(children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          width: double.infinity,
          // height: double.infinity,
          child: Center(child: Text('Home')),
        ),
        SizedBox(height: 200),
        Center(
            child: Row(
          children: <Widget>[
            Card(
              color: Colors.teal[300],
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Card tapped.');
                },
                child: SizedBox(
                  // width: double.infinity,
                  width: size.width * 0.31,
                  height: 150,
                  child: Center(child: Text('1st card')),
                ),
              ),
            ),
            Card(
              color: Colors.teal[200],
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Card tapped.');
                },
                child: SizedBox(
                  width: size.width * 0.31,
                  // width: double.infinity,
                  height: 150,
                  child: Center(child: Text('2nd card')),
                ),
              ),
            ),
            Card(
              color: Colors.teal[300],
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Card tapped.');
                },
                child: SizedBox(
                  width: size.width * 0.31,
                  // width: double.infinity,
                  height: 150,
                  child: Center(child: Text('3rd card')),
                ),
              ),
            )
          ],
        )),
        Center(
            child: Row(
          children: <Widget>[
            Card(
              color: Colors.teal[300],
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Card tapped.');
                },
                child: SizedBox(
                  // width: double.infinity,
                  width: size.width * 0.31,
                  height: 150,
                  child: Center(child: Text('4th card')),
                ),
              ),
            ),
            Card(
              color: Colors.teal[200],
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Card tapped.');
                },
                child: SizedBox(
                  width: size.width * 0.31,
                  // width: double.infinity,
                  height: 150,
                  child: Center(child: Text('5th card')),
                ),
              ),
            ),
            Card(
              color: Colors.teal[300],
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Card tapped.');
                },
                child: SizedBox(
                  width: size.width * 0.31,
                  // width: double.infinity,
                  height: 150,
                  child: Center(child: Text('6th card')),
                ),
              ),
            )
          ],
        )),
      ]),
      Center(child: Text('Health')),
      Center(child: Text('Profile')),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('HOSPICARE'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: screens[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(
          () => currentIndex = index,
        ),
        iconSize: 35,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'
              // backgroundColor: Colors.blue[300],
              ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Health'
              // backgroundColor: Colors.blue[300],
              ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'
              // backgroundColor: Colors.blue[300],
              ),
        ],
      ),
    );
  }
}
