// ignore_for_file: library_private_types_in_public_api, unused_import, duplicate_ignore, prefer_const_constructors, sized_box_for_whitespace,prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe, prefer_const_constructors_in_immutables, unused_local_variable, unnecessary_new, implementation_imports, unnecessary_import, avoid_unnecessary_containers

// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hospicare_app/serial_bluetooth/MainPage.dart';
import 'package:flutter/src/painting/box_shadow.dart';
import 'package:hospicare_app/ui/homepage.dart';
import 'package:hospicare_app/ui/profile.dart';
import 'logs.dart';
import 'themes/custom_nv_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> myList = [Home_Screen(), logs(), settingsview()];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  // get selectedPageIndex => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: myList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          iconSize: 25,
          selectedFontSize: 15,
          unselectedFontSize: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Logs"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}

// Size size = MediaQuery.of(context).size;
    // var screens = [
    //   ListView(children: <Widget>[
    //     Container(
    //       padding: const EdgeInsets.symmetric(vertical: 30),
    //       width: double.infinity,
    //       // height: double.infinity,
    //       child: Center(child: Text('Hello Sriram')),
    //     ),
    //     SizedBox(height: 50),
    //     // Center(
    //     //     child: Row(
    //     //   children: <Widget>[
    //     //     Card(
    //     //       color: Colors.teal[300],
    //     //       child: InkWell(
    //     //         splashColor: Colors.blue.withAlpha(30),
    //     //         onTap: () {
    //     //           debugPrint('Card tapped.');
    //     //         },
    //     //         child: SizedBox(
    //     //           // width: double.infinity,
    //     //           width: size.width * 0.31,
    //     //           height: 150,
    //     //           child: Center(child: Text('1st card')),
    //     //         ),
    //     //       ),
    //     //     ),
    //     //     Card(
    //     //       color: Colors.teal[200],
    //     //       child: InkWell(
    //     //         splashColor: Colors.blue.withAlpha(30),
    //     //         onTap: () {
    //     //           debugPrint('Card tapped.');
    //     //         },
    //     //         child: SizedBox(
    //     //           width: size.width * 0.31,
    //     //           // width: double.infinity,
    //     //           height: 150,
    //     //           child: Center(child: Text('2nd card')),
    //     //         ),
    //     //       ),
    //     //     ),
    //     //     Card(
    //     //       color: Colors.teal[300],
    //     //       child: InkWell(
    //     //         splashColor: Colors.blue.withAlpha(30),
    //     //         onTap: () {
    //     //           debugPrint('Card tapped.');
    //     //         },
    //     //         child: SizedBox(
    //     //           width: size.width * 0.31,
    //     //           // width: double.infinity,
    //     //           height: 150,
    //     //           child: Center(child: Text('3rd card')),
    //     //         ),
    //     //       ),
    //     //     )
    //     //   ],
    //     // )),
    //     // Center(
    //     //     child: Row(
    //     //   children: <Widget>[
    //     //     Card(
    //     //       color: Colors.teal[300],
    //     //       child: InkWell(
    //     //         splashColor: Colors.blue.withAlpha(30),
    //     //         onTap: () {
    //     //           debugPrint('Card tapped.');
    //     //         },
    //     //         child: SizedBox(
    //     //           // width: double.infinity,
    //     //           width: size.width * 0.31,
    //     //           height: 150,
    //     //           child: Center(child: Text('4th card')),
    //     //         ),
    //     //       ),
    //     //     ),
    //     //     Card(
    //     //       color: Colors.teal[200],
    //     //       child: InkWell(
    //     //         splashColor: Colors.blue.withAlpha(30),
    //     //         onTap: () {
    //     //           debugPrint('Card tapped.');
    //     //         },
    //     //         child: SizedBox(
    //     //           width: size.width * 0.31,
    //     //           // width: double.infinity,
    //     //           height: 150,
    //     //           child: Center(child: Text('5th card')),
    //     //         ),
    //     //       ),
    //     //     ),
    //     //     Card(
    //     //       color: Colors.teal[300],
    //     //       child: InkWell(
    //     //         splashColor: Colors.blue.withAlpha(30),
    //     //         onTap: () {
    //     //           debugPrint('Card tapped.');
    //     //         },
    //     //         child: SizedBox(
    //     //           width: size.width * 0.31,
    //     //           // width: double.infinity,
    //     //           height: 150,
    //     //           child: Center(child: Text('6th card')),
    //     //         ),
    //     //       ),
    //     //     ),
    //     //   ],
    //     // )),
    //     SizedBox(height: 50),
    //     Center(
    //       child: ElevatedButton(
    //         style: ElevatedButton.styleFrom(
    //           primary: Color.fromARGB(255, 16, 255, 203), // background
    //           onPrimary: Colors.white, // foreground
    //         ),
    //         onPressed: () async {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => MainPage(),
    //             ),
    //           );
    //         },
    //         child: const Text(
    //           "Bluetooth",
    //           style: TextStyle(
    //               fontSize: 12,
    //               //  fontWeight: FontWeight.bold,
    //               color: Color.fromARGB(255, 0, 0, 0)),
    //         ),
    //       ),
    //     ),
    //   ]),
    //   Center(child: Text('Health')),
    //   Center(child: Text('Profile')),
    // ];

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('HOSPICARE'),
    //     elevation: 0,
    //     centerTitle: true,
    //   ),
    //   body: Container(
    //       width: MediaQuery.of(context).size.width,
    //       height: MediaQuery.of(context).size.height,
    //       child: screens[currentIndex]),
    //   bottomNavigationBar: CustomBottomBoxBar(
    //     onIndexChange: (int val) {
    //       setState(() {
    //         currentIndex = val;
    //       });
    //     },
    //     inicialIndex: currentIndex,
    //     items: [
    //       CustomBottomBoxBarItem(Icons.home, Text('Home')),
    //       CustomBottomBoxBarItem(Icons.history_rounded, Text('Logs')),
    //       CustomBottomBoxBarItem(Icons.person, Text('Profile')),
    //       // CustomBottomBoxBarItem(Icons.work_outline_rounded, Text('Work')),
    //     ],
    //   ),

    //   // bottomNavigationBar: BottomNavigationBar(

    //   //   currentIndex: currentIndex,
    //   //   onTap: (index) => setState(
    //   //     () => currentIndex = index,
    //   //   ),
    //   //   iconSize: 35,
    //   //   items: [
    //   //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'
    //   //         // backgroundColor: Colors.blue[300],
    //   //         ),
    //   //     BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Health'
    //   //         // backgroundColor: Colors.blue[300],
    //   //         ),
    //   //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'
    //   //         // backgroundColor: Colors.blue[300],
    //   //         ),
    //   // ],
    // );
    // // );

