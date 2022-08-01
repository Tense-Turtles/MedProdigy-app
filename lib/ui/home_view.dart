// ignore_for_file: library_private_types_in_public_api, unused_import, duplicate_ignore, prefer_const_constructors

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
  final screens = [
    Center(child: Text('Home')),
    Center(child: Text('Health')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOSPICARE'),
        elevation: 0,
        centerTitle: true,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(
          () => currentIndex = index,
        ),
        iconSize: 35,
        // ignore: prefer_const_literals_to_create_immutables
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
