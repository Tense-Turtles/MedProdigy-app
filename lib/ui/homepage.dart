import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../serial_bluetooth/MainPage.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              color: Colors.blue),
          child: Stack(
            children: [
              Positioned(
                  top: 40,
                  left: 0,
                  child: Container(
                      height: 80,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ))),
              Positioned(
                top: 55,
                left: 20,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () async {},
                  child: const Text(
                    'Welcome to MedProdegy',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          height: 230,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
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
                        // image: DecorationImage(
                        //     fit: BoxFit.fill,
                        //     image: AssetImage('https://www.onlinebiologynotes.com/wp-content/uploads/2018/08/ECG-678x300.jpg'))
                      ),
                      child: Text(
                        "   ECG Display",
                        style:
                            TextStyle(height: 5, fontWeight: FontWeight.bold),
                      ),
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
                        ElevatedButton.icon(
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()));
                            },
                            icon: Icon(Icons.bluetooth),
                            label: Text("Enable Bluetooth")),

// added battery percentage
                        Column(children: [
                          Text(
                            "Device Battery Percentage",
                            style: TextStyle(
                                height: 3, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "  50%",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 43),
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Icon(
                                    Icons.battery_full_sharp,
                                    size: 50,
                                    color: Colors.grey,
                                  )),
                            ],
                          )
                        ]),
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
//Blood Pressure
                    Container(
                      margin: const EdgeInsets.only(bottom: 5, top: 0),
                      height: 160,
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(60),
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
                          top: 30,
                          bottom: 50,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Blood Pressure",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "100",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      height: 0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Positioned(
                                    left: -5,
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Icon(
                                          Icons.bloodtype,
                                          size: 15,
                                          color: Colors.white,
                                        ))),
                                Positioned(
                                  left: -2,
                                  child: Text(
                                    "mmhg",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        height: 4,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
//Blood glucose
                    Container(
                      margin: const EdgeInsets.only(bottom: 5, top: 0),
                      height: 160,
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(60),
                              bottomRight: Radius.circular(60),
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
                          top: 30,
                          bottom: 50,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Blood glucose",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "90",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      height: 0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Positioned(
                                    left: -5,
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Icon(
                                          FontAwesomeIcons.bowlFood,
                                          size: 15,
                                          color: Colors.white,
                                        ))),
                                Text(
                                  "mg/dl",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      height: 4,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
//Temperature
                    Container(
                      margin: const EdgeInsets.only(bottom: 5, top: 0),
                      height: 160,
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(60),
                              bottomLeft: Radius.circular(60),
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
                          top: 30,
                          bottom: 50,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Temparature",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "90",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      height: 0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Positioned(
                                    left: -5,
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Icon(
                                          FontAwesomeIcons.temperatureHalf,
                                          size: 15,
                                          color: Colors.white,
                                        ))),
                                Text(
                                  "º/c",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      height: 4,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
//Spo2
                    Container(
                      margin: const EdgeInsets.only(bottom: 5, top: 0),
                      height: 160,
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(60),
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
                          top: 30,
                          bottom: 50,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  " SpO\u2082",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "70",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      height: 0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Positioned(
                                    left: -5,
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Icon(
                                          FontAwesomeIcons.heartCircleCheck,
                                          size: 15,
                                          color: Colors.white,
                                        ))),
                                Text(
                                  "%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      height: 4,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )))
      ],
    );
  }
}
