// ignore_for_file: prefer_const_constructors, camel_case_types, library_private_types_in_public_api, unused_import, unused_local_variable, sort_child_properties_last, depend_on_referenced_packages, use_key_in_widget_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../serial_bluetooth/MainPage.dart';

import '/ui/CardWidget.dart'; //new

class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen>
    with SingleTickerProviderStateMixin {
  final colorstheme = Color(0xff4b4b87);

  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text(
      //     'Status',
      //     style: TextStyle(fontSize: 27, color: colorstheme),
      //   ),
      //   centerTitle: true,
      //   shadowColor: Colors.transparent,
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 15.0),
      //     child: IconButton(
      //       icon: Icon(
      //         Icons.arrow_back,
      //         color: colorstheme,
      //         size: 30,
      //       ),
      //       onPressed: () {},
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                icon: Icon(Icons.bluetooth),
                label: Text("Enable Bluetooth")),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300]),
            ),
            Card(
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: const EdgeInsets.all(5)),
                        Text(
                          "ECG",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        // style: TextStyle(
                        //     color: colorwhite,
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.bold),
                        // ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: Color.fromARGB(95, 133, 103, 103)),
                          child: Icon(
                            FontAwesomeIcons.heartPulse,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 10, bottom: 20),
                        child: Text(
                          '144 bpm',
                          style: TextStyle(
                              fontSize: 27,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                CardWidget(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

      //   body: SafeArea(
      //       child: Container(
      //     child: GridView(
      //         children: [
      //           Container(
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //               color: Colors.black,
      //             ),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Text(
      //                   "Blood Pressure",
      //                   style: TextStyle(color: Colors.white, fontSize: 20),
      //                 ),
      //                 Icon(
      //                   Icons.bloodtype,
      //                   size: 30,
      //                   color: Colors.white,
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Container(
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //               color: Colors.black,
      //             ),
      //           ),
      //           Container(
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //               color: Colors.black,
      //             ),
      //           ),
      //           Container(
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //               color: Colors.black,
      //             ),
      //           ),
      //         ],
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10)),
      //   )),
  

// body: Center(
//         child: GridView.extent(
//           primary: false,
//           padding: const EdgeInsets.all(16),
//           crossAxisSpacing: 5,
//           mainAxisSpacing: 5,
//           maxCrossAxisExtent: 200.0,
//           children: <Widget>[
//             Card(
//               child: const Text('Ecg',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               color: Colors.blue[300],
//             ),
//             Card(
//               child: const Text('Blood Pressure',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               color: Colors.blue[300],
//             ),
//             Card(
//               child: const Text('Blood glucose',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               color: Colors.blue[300],
//             ),
//             Card(
//               child: const Text('Temperature',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               color: Colors.blue[300],
//             ),
//             Card(
//               child: const Text('Spo2',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               color: Colors.blue[300],
//             ),
//             Card(
//               child: const Text('Heart Rate',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               color: Colors.blue[300],
//             ),
//             // bluetooth button
//             Center(
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                   backgroundColor: Colors.blue, // foreground
//                 ),
//                 onPressed: () async {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => MainPage(),
//                     ),
//                   );
//                 },
//                 child: const Text(
//                   "Bluetooth",
//                   style: TextStyle(
//                       fontSize: 12,
//                       //  fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 0, 0, 0)),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),

// Column(
    // children: [
    //   Container(
    //     height: 160,
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.only(
    //           bottomRight: Radius.circular(50),
    //         ),
    //         color: Colors.blue),
    //     child: Stack(
    //       children: [
    //         Positioned(
    //             top: 40,
    //             left: 0,
    //             child: Container(
    //                 height: 80,
    //                 width: 300,
    //                 decoration: BoxDecoration(
    //                   color: Colors.white,
    //                   borderRadius: BorderRadius.only(
    //                     bottomRight: Radius.circular(50),
    //                     topRight: Radius.circular(50),
    //                   ),
    //                 ))),
    //         Positioned(
    //           top: 55,
    //           left: 20,
    //           child: TextButton(
    //             style: TextButton.styleFrom(
    //               textStyle: const TextStyle(fontSize: 20),
    //             ),
    //             onPressed: () async {},
    //             child: const Text(
    //               'Welcome to MedProdegy',
    //               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // SizedBox(
    //   height: height * 0.02,
    // ),
    // Container(
    //   height: 230,
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
    //       boxShadow: [
    //         BoxShadow(
    //             color: Colors.grey.withOpacity(0.3),
    //             offset: Offset(-10, 10),
    //             blurRadius: 20,
    //             spreadRadius: 4)
    //       ]),
    //   child: Stack(
    // children: [
    // Positioned(
    //     top: 35,
    //     left: 20,
    //     child: Material(
    //       child: Container(
    //         height: 180,
    //         width: width * 0.9,
    //         decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.circular(0),
    //             boxShadow: [
    //               BoxShadow(
    //                   color: Colors.grey.withOpacity(0.3),
    //                   offset: Offset(-10, 10),
    //                   spreadRadius: 4,
    //                   blurRadius: 20)
    //             ]),
    //       ),
    //     )),
    // Positioned(
    //   top: 0,
    //   left: 30,
    //   child: Card(
    //       elevation: 10.0,
    //       shadowColor: Colors.grey.withOpacity(0.5),
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(15),
    //       ),
    //       child: Container(
    //         height: 200,
    //         width: 150,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(10),
    //           // image: DecorationImage(
    //           //     fit: BoxFit.fill,
    //           //     image: AssetImage('https://www.onlinebiologynotes.com/wp-content/uploads/2018/08/ECG-678x300.jpg'))
    //         ),
    //         child: Text(
    //           "   ECG Display",
    //           style:
    //               TextStyle(height: 5, fontWeight: FontWeight.bold),
    //         ),
    //       )),
    // ),
    // Positioned(
    //     top: 45,
    //     left: 190,
    //     child: Container(
    //       height: 150,
    //       width: 170,
    //       child: Column(
    //         children: [
    //           ElevatedButton.icon(
    //               onPressed: () async {
    //                 Navigator.push(
    //                     context,
    //                     MaterialPageRoute(
    //                         builder: (context) => MainPage()));
    //               },
    //               icon: Icon(Icons.bluetooth),
    //               label: Text("Enable Bluetooth")),

// added battery percentage
    //                 Column(children: [
    //                   Text(
    //                     "Device Battery Percentage",
    //                     style: TextStyle(
    //                         height: 3, fontWeight: FontWeight.bold),
    //                   ),
    //                   Row(
    //                     children: [
    //                       Text(
    //                         "  50%",
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold, fontSize: 43),
    //                       ),
    //                       Align(
    //                           alignment: Alignment.topLeft,
    //                           child: Icon(
    //                             Icons.battery_full_sharp,
    //                             size: 50,
    //                             color: Colors.grey,
    //                           )),
    //                     ],
    //                   )
    //                 ]),
    //               ],
    //             ),
    //           )),
    //       // SizedBox(
    //       //   height: height * 0.05,
    //       // ),
    //     ],
    //   ),
    // ),
//         Expanded(
//             child: MediaQuery.removePadding(
//                 removeTop: true,
//                 context: context,
//                 child: ListView(
//                   children: [

// // //Blood Pressure
// //                     Container(
// //                       margin: const EdgeInsets.only(bottom: 0, top: 0),
// //                       height: 10,
// //                       padding: const EdgeInsets.only(
// //                           left: 20, right: 20, bottom: 20),
// //                       child: Container(
// //                         decoration: BoxDecoration(
// //                             color: Colors.blue,
// //                             borderRadius: const BorderRadius.only(
// //                               bottomLeft: Radius.circular(60),
// //                             ),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                   color: Colors.black.withOpacity(0.3),
// //                                   offset: Offset(-10, 10),
// //                                   blurRadius: 20,
// //                                   spreadRadius: 4)
// //                             ]),
// //                         padding: const EdgeInsets.only(
// //                           left: 32,
// //                           top: 30,
// //                           bottom: 50,
// //                         ),
// //                         child: Column(
// //                           children: [
// //                             Row(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: <Widget>[
// //                                 Text(
// //                                   "Blood Pressure",
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 25,
// //                                       fontWeight: FontWeight.bold),
// //                                 ),
// //                                 const SizedBox(
// //                                   width: 20,
// //                                 ),
// //                                 Text(
// //                                   "100",
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 40,
// //                                       height: 0,
// //                                       fontWeight: FontWeight.bold),
// //                                 ),
// //                                 Positioned(
// //                                     left: -5,
// //                                     child: Align(
// //                                         alignment: Alignment.topLeft,
// //                                         child: Icon(
// //                                           Icons.bloodtype,
// //                                           size: 15,
// //                                           color: Colors.white,
// //                                         ))),
// //                                 Positioned(
// //                                   left: -2,
// //                                   child: Text(
// //                                     "mmhg",
// //                                     style: TextStyle(
// //                                         color: Colors.white,
// //                                         fontSize: 15,
// //                                         height: 4,
// //                                         fontWeight: FontWeight.bold),
// //                                   ),
// //                                 ),
// //                                 const SizedBox(
// //                                   height: 2,
// //                                 ),
// //                               ],
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// // //Blood glucose
// //                     Container(
// //                       margin: const EdgeInsets.only(bottom: 5, top: 0),
// //                       height: 160,
// //                       padding: const EdgeInsets.only(
// //                           left: 20, right: 20, bottom: 20),
// //                       child: Container(
// //                         decoration: BoxDecoration(
// //                             color: Colors.blue,
// //                             borderRadius: const BorderRadius.only(
// //                               topRight: Radius.circular(60),
// //                               bottomRight: Radius.circular(60),
// //                             ),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                   color: Colors.black.withOpacity(0.3),
// //                                   offset: Offset(-10, 10),
// //                                   blurRadius: 20,
// //                                   spreadRadius: 4)
// //                             ]),
// //                         padding: const EdgeInsets.only(
// //                           left: 32,
// //                           top: 30,
// //                           bottom: 50,
// //                         ),
// //                         child: Column(
// //                           children: [
// //                             Row(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: <Widget>[
// //                                 Text(
// //                                   "Blood glucose",
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 25,
// //                                       fontWeight: FontWeight.bold),
// //                                 ),
// //                                 const SizedBox(
// //                                   width: 20,
// //                                 ),
// //                                 Text(
// //                                   "90",
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 50,
// //                                       height: 0,
// //                                       fontWeight: FontWeight.bold),
// //                                 ),
// //                                 Positioned(
// //                                     left: -5,
// //                                     child: Align(
// //                                         alignment: Alignment.topLeft,
// //                                         child: Icon(
// //                                           FontAwesomeIcons.bowlFood,
// //                                           size: 15,
// //                                           color: Colors.white,
// //                                         ))),
// //                                 Text(
// //                                   "mg/dl",
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 15,
// //                                       height: 4,
// //                                       fontWeight: FontWeight.bold),
// //                                 ),
// //                                 const SizedBox(
// //                                   height: 2,
// //                                 ),
// //                               ],
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// // //Temperature
// //                     Container(
// //                       margin: const EdgeInsets.only(bottom: 5, top: 0),
// //                       height: 160,
// //                       padding: const EdgeInsets.only(
// //                           left: 20, right: 20, bottom: 20),
// //                       child: Container(
// //                         decoration: BoxDecoration(
// //                             color: Colors.blue,
// //                             borderRadius: const BorderRadius.only(
// //                               topLeft: Radius.circular(60),
// //                               bottomLeft: Radius.circular(60),
// //                             ),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                   color: Colors.black.withOpacity(0.3),
// //                                   offset: Offset(-10, 10),
// //                                   blurRadius: 20,
// //                                   spreadRadius: 4)
// //                             ]),
// //                         padding: const EdgeInsets.only(
// //                           left: 32,
// //                           top: 30,
// //                           bottom: 50,
// //                         ),
// //                         child: Column(
// //                           children: [
// //                             Row(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: <Widget>[
// //                                 Text(
// //                                   "Temparature",
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 25,
// //                                       fontWeight: FontWeight.bold),
// //                                 ),
// //                                 const SizedBox(
// //                                   width: 20,
// //                                 ),
// //                                 Text(
// //                                   "90",
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 50,
// //                                       height: 0,
// //                                       fontWeight: FontWeight.bold),
// //                                 ),
// //                                 Positioned(
// //                                     left: -5,
// //                                     child: Align(
// //                                         alignment: Alignment.topLeft,
// //                                         child: Icon(
// //                                           FontAwesomeIcons.temperatureHalf,
// //                                           size: 15,
// //                                           color: Colors.white,
// //                                         ))),
// //                                 Text(
// //                                   "º/c",
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 15,
// //                                       height: 4,
// //                                       fontWeight: FontWeight.bold),
// //                                 ),
// //                                 const SizedBox(
// //                                   height: 2,
// //                                 ),
// //                               ],
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// // //Spo2
// //                     Container(
// //                       margin: const EdgeInsets.only(bottom: 5, top: 0),
// //                       height: 160,
// //                       padding: const EdgeInsets.only(
// //                           left: 20, right: 20, bottom: 20),
// //                       child: Container(
// //                         decoration: BoxDecoration(
// //                             color: Colors.blue,
// //                             borderRadius: const BorderRadius.only(
// //                               topRight: Radius.circular(60),
// //                             ),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                   color: Colors.black.withOpacity(0.3),
// //                                   offset: Offset(-10, 10),
// //                                   blurRadius: 20,
// //                                   spreadRadius: 4)
// //                             ]),
// //                         padding: const EdgeInsets.only(
// //                           left: 32,
// //                           top: 30,
// //                           bottom: 50,
// //                         ),
// //                         child: Column(
// //                           children: [
// //                             Row(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: <Widget>[
// //                                 Text(
// //                                   " SpO\u2082",
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 25,
// //                                       fontWeight: FontWeight.bold),
// //                                 ),
// //                                 const SizedBox(
// //                                   width: 100,
// //                                 ),
// //                                 Text(
// //                                   "70",
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 50,
// //                                       height: 0,
// //                                       fontWeight: FontWeight.bold),
// //                                 ),
// //                                 Positioned(
// //                                     left: -5,
// //                                     child: Align(
// //                                         alignment: Alignment.topLeft,
// //                                         child: Icon(
// //                                           FontAwesomeIcons.heartCircleCheck,
// //                                           size: 15,
// //                                           color: Colors.white,
// //                                         ))),
// //                                 Text(
// //                                   "%",
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 15,
// //                                       height: 4,
// //                                       fontWeight: FontWeight.bold),
// //                                 ),
// //                                 const SizedBox(
// //                                   height: 2,
// //                                 ),
// //                               ],
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
//                   ],
//                 )))
    //   ],
    //   // );
