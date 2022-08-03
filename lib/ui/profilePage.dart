// ignore_for_file: prefer_const_constructors, camel_case_types, implementation_imports, unnecessary_import, depend_on_referenced_packages, unused_import, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sized_box_for_whitespace, unused_local_variable, no_leading_underscores_for_local_identifiers, sort_child_properties_last, await_only_futures, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';

class profilePage extends StatelessWidget {
  final String documentId;

  profilePage(this.documentId);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    final _emailContoller = TextEditingController();
    final _nameContorller = TextEditingController();
    final _ageContorller = TextEditingController();
    final _phoneNumberContorller = TextEditingController();

    Future updatedata(String name, String email, String age, String phoneNumber,
        String uid) async {
      return await users.doc("BTOcu6G9DAJHaWpF11KJ").update({
        'name': name,
        'age': age,
        'email': email,
        'phoneNumber': phoneNumber
      }).then((value) => print("Details updated"));
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
//  return back to previous page
          leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Profile")),
// feilds to display names
      body: Builder(
        builder: (context) => Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FutureBuilder<DocumentSnapshot>(
                future: users.doc(documentId).get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text("Something went wrong");
                  }
                  if (snapshot.hasData && !snapshot.data!.exists) {
                    return Text("Document does not exist");
                  }
                  if (snapshot.connectionState == ConnectionState.done) {
                    Map<String, dynamic> data =
                        snapshot.data!.data() as Map<String, dynamic>;
                    return Stack(
                      //add the return text here
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width - 3,
                              height: 500 - 3,
                              child: Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Material(
                                  color: Colors.white,
                                  elevation: 14.0,
                                  shadowColor: Colors.black,
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 200,
                                            child: Image.network(
                                              "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80", //'${users['profilepic']}'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),

                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Your details",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
//user name
                                          Text(
                                            "Name: ${data['name']}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
//user Age
                                          Text(
                                            "Age: ${data['age']}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
//user Phone Number
                                          Text(
                                            "PHone Number: ${data['phoneNumber']}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),

//user Email
                                          Text(
                                            "Email: ${data['email']}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
//edit text icon button
                                          Container(
                                            padding: EdgeInsets.only(top: 20),
                                            child: IconButton(
                                              icon: Icon(Icons.edit),
                                              onPressed: (() {
                                                _nameContorller.text =
                                                    data['name'];
                                                _emailContoller.text =
                                                    data['email'];
                                                _ageContorller.text =
                                                    data['age'];
                                                _phoneNumberContorller.text =
                                                    data['phoneNumber'];

                                                showDialog(
                                                  context: context,
                                                  builder: (context) => Dialog(
                                                    child: Container(
                                                      child: ListView(
                                                        shrinkWrap: true,
                                                        children: <Widget>[
// Name text field
                                                          SizedBox(height: 10),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            margin:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        40),
                                                            child: TextField(
                                                              controller:
                                                                  _nameContorller,
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Name"),
                                                            ),
                                                          ),
// Age text Feild
                                                          SizedBox(height: 10),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            margin:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        40),
                                                            child: TextField(
                                                              controller:
                                                                  _ageContorller,
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Age"),
                                                            ),
                                                          ),

// MobileNumber text field
                                                          SizedBox(height: 10),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            margin:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        40),
                                                            child: TextField(
                                                              controller:
                                                                  _phoneNumberContorller,
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Mobile Number"),
                                                            ),
                                                          ),

// Email text field
                                                          SizedBox(height: 10),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            margin:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        40),
                                                            child:
                                                                TextFormField(
                                                              validator: (val) {
                                                                return RegExp(
                                                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                                        .hasMatch(
                                                                            val!)
                                                                    ? null
                                                                    : "Enter correct email";
                                                              },
                                                              controller:
                                                                  _emailContoller,
                                                              decoration:
                                                                  const InputDecoration(
                                                                      labelText:
                                                                          "Email"),
                                                            ),
                                                          ),

// submit changes button
                                                          TextButton.icon(
                                                            onPressed: () {
                                                              updatedata;
                                                            },
                                                            icon: Icon(
                                                                Icons.add,
                                                                size: 18),
                                                            label: Text(
                                                                "Update Details"),
                                                          ),
                                                          SizedBox(height: 40),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }

                  return Text("loading...");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
