// ignore_for_file: library_private_types_in_public_api, unused_import, duplicate_ignore, prefer_const_constructors, sized_box_for_whitespace,prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe, prefer_const_constructors_in_immutables, unused_local_variable, unnecessary_new, implementation_imports, unnecessary_import

// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hospicare_app/serial_bluetooth/MainPage.dart';
import 'package:flutter/src/painting/box_shadow.dart';
import 'themes/custom_nv_bar.dart';

class HomeView extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  get selectedPageIndex => null;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                color: Colors.blue),
            child: Stack(
              children: [
                Positioned(
                    top: 80,
                    left: 0,
                    child: Container(
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ))),
                Positioned(
                  top: 110,
                  left: 20,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () async {},
                    child: const Text(
                      'Welcome to MedProdegy',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            height: 230,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(-10, 10),
                      blurRadius: 20,
                      spreadRadius: 4)
                ]),
            child: Stack(
              children: [
                Positioned(
                    top: 35,
                    left: 20,
                    child: Material(
                      child: Container(
                        height: 180,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: Offset(-10, 10),
                                  spreadRadius: 4,
                                  blurRadius: 20)
                            ]),
                      ),
                    )),
                Positioned(
                  top: 0,
                  left: 30,
                  child: Card(
                      elevation: 10.0,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/logo.jpeg'))),
                      )),
                ),
                Positioned(
                    top: 45,
                    left: 190,
                    child: Container(
                      height: 150,
                      width: 170,
                      child: Column(
                        children: [
                          Positioned(
                            top: 110,
                            left: 20,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Click below to enable bluetooth',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                // SizedBox(
                //   height: height * 0.05,
                // ),
              ],
            ),
          ),
          Expanded(
              child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 25),
                        height: 200,
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(80),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    offset: Offset(-10, 10),
                                    blurRadius: 20,
                                    spreadRadius: 4)
                              ]),
                          padding: const EdgeInsets.only(
                            left: 32,
                            top: 50,
                            bottom: 50,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Blood Presure",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "these are your blood pressure readings",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
//Temperature
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 25),
                        height: 200,
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(80),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    offset: Offset(-10, 10),
                                    blurRadius: 20,
                                    spreadRadius: 4)
                              ]),
                          padding: const EdgeInsets.only(
                            left: 32,
                            top: 50,
                            bottom: 50,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Temperature",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "these are your Temperature readings",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )))
        ],
      ),
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
