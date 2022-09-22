// ignore_for_file: camel_case_types, implementation_imports, unnecessary_import, avoid_unnecessary_containers, prefer_const_constructors, unused_import, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hospicare_app/ui/homepage.dart';

class settingsview extends StatefulWidget {
  const settingsview({key});

  @override
  State<settingsview> createState() => _settingsview();
}

class _settingsview extends State<settingsview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ), //AppBar
        body: Center(
          /** Card Widget **/
          child: Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.blueAccent[100],
            child: SizedBox(
              width: 300,
              height: 600,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue[500],
                      radius: 90,
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                        radius: 80,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Thanmai sai',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    const Text(
                      'Age 20/Male',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 50),
                        ),
                        onPressed: () {},
                        child: Text('Change Password')),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 50),
                        ),
                        onPressed: () {},
                        child: Text('Privacy Policy')),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 50),
                        ),
                        onPressed: () {},
                        child: Text('Terms and Conditions')),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 50),
                        ),
                        onPressed: () {},
                        child: Text('Support')),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 50),
                        ),
                        onPressed: () async {},
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => homepage()));
                        // },
                        child: Text('Logout')),
                    const SizedBox(
                      height: 10,
                    ),
                    // SizedBox(
                    //   width: 100,
                    //   child: ElevatedButton(
                    //     onPressed: () => 'Null',
                    //     style: ButtonStyle(
                    //         backgroundColor:
                    //             MaterialStateProperty.all(Colors.blue)),
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(2),
                    //       child: Row(
                    //         children: const [
                    //           Icon(Icons.logout),
                    //           Text('logout')
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

    // return Scaffold(
    //   body: Column(
    //     // ignore: prefer_const_literals_to_create_immutables
    //     children: [
    //       Card(
    //         child: ListTile(
    //           leading: Icon(FontAwesomeIcons.user),
    //           title: Text(
    //             "Thanmai Sai",
    //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    //             textDirection: TextDirection.rtl,
    //           ),
    //           subtitle: Text(
    //             "Age 20/Male",
    //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    //             textDirection: TextDirection.rtl,
    //           ),
    //         ),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(10.0),
    //         ),
    //         elevation: 5,
    //         margin: EdgeInsets.all(10),
    //       ),
    //       SizedBox(
    //         height: 10,
    //       ),
    //       Card(
    //         child: ListTile(
    //           leading: Icon(FontAwesomeIcons.user),
    //           title: Text(
    //             "Thanmai Sai",
    //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    //             textDirection: TextDirection.rtl,
    //           ),
    //           subtitle: Text(
    //             "Age 20/Male",
    //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    //             textDirection: TextDirection.rtl,
    //           ),
    //         ),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(10.0),
    //         ),
    //         elevation: 5,
    //         margin: EdgeInsets.all(10),
    //       ),
    //     ],
    //   ),
    // );
  }
}
