// ignore_for_file: file_names, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, camel_case_types, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardWidget extends StatelessWidget {
  List data = [
    {
      "color": Color(0xff7a54ff),
      "Text": Text(
        "Heart Rate",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      "Icon": FontAwesomeIcons.heart
    },
    {
      "color": Color(0xffff8f61),
      "Text": Text(
        "blood Pressure",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      "Icon": Icons.bloodtype,
    },
    {
      "color": Color(0xff2ac3ff),
      "Text": Text(
        "Blood glucose",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      "Icon": FontAwesomeIcons.bowlFood,
    },
    {
      "color": Color(0xff7a54ff),
      "Text": Text(
        "SpO\u2082 Rate",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      "Icon": FontAwesomeIcons.heartCircleCheck,
    },
    {
      "color": Color(0xffff8f61),
      "Text": Text(
        "Battery %",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      "Icon": Icons.battery_full_sharp,
    },
    {
      "color": Color(0xff2ac3ff),
      "Text": Text(
        "Temperature",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      "Icon": FontAwesomeIcons.temperatureHalf,
    },
  ];

  final colorwhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              color: data[index]["color"],
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
                        data[index]['Text'],
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
                            // Icons.bloodtype,
                            data[index]["Icon"],
                            color: colorwhite,
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
                              color: colorwhite,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
