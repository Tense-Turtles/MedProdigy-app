// ignore_for_file: prefer_const_constructors, unused_field, avoid_print, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hospicare_app/ui/authentication.dart';

// implement the ui from the backgroud.dart
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _emailContoller = TextEditingController();
  final _passwordContoller = TextEditingController();
  final _nameContorller = TextEditingController();
  final _ageContorller = TextEditingController();
  final _phoneNumberContorller = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  Future signUp() async {
    if (passwordConfirmed()) {
      //create user
      FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailContoller.text.trim(),
          password: _passwordContoller.text.trim());
    }

    // add userdetails
    addUserDetails(
        _nameContorller.text.trim(),
        _emailContoller.text.trim(),
        int.parse(_ageContorller.text.trim()),
        int.parse(_phoneNumberContorller.text.trim()));
  }

//method to check password and confirmpassword are same
  bool passwordConfirmed() {
    if (_passwordContoller.text.trim() ==
        _confirmpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  Future addUserDetails(
      String name, String email, int age, int phoneNumber) async {
    try {
      await FirebaseFirestore.instance.collection('users').add({
        'name': name,
        'age': age,
        'email': email,
        'phoneNumber': phoneNumber
      });
    } on Exception catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        decoration: BoxDecoration(
            //image: DecorationImage(
            //    image: AssetImage('assets/register.png'), fit: BoxFit.cover),
            color: Color.fromARGB(255, 255, 255, 255)),
        child: Scaffold(
            backgroundColor: Colors.transparent,

//Scrollable view for pixel error
            body: Stack(children: [
              SingleChildScrollView(
                // mainAxisAlignment: MainAxisAlignment.center,
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1),
// heading
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: const Text(
                          "REGISTER\nCreate account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2661FA),
                              fontSize: 36),
                          textAlign: TextAlign.left,
                        ),
                      ),
// Name text field
                      SizedBox(height: size.height * 0.04),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
                          controller: _nameContorller,
                          decoration: InputDecoration(labelText: "Name"),
                        ),
                      ),
// Age text Feild
                      SizedBox(height: size.height * 0.04),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
                          controller: _ageContorller,
                          decoration: InputDecoration(labelText: "Age"),
                        ),
                      ),

// MobileNumber text field
                      SizedBox(height: size.height * 0.03),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
                          controller: _phoneNumberContorller,
                          decoration:
                              InputDecoration(labelText: "Mobile Number"),
                        ),
                      ),

// Email text field
                      SizedBox(height: size.height * 0.03),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          validator: (val) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val!)
                                ? null
                                : "Enter correct email";
                          },
                          controller: _emailContoller,
                          decoration: const InputDecoration(labelText: "Email"),
                        ),
                      ),

// Password text field
                      SizedBox(height: size.height * 0.03),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
                          controller: _passwordContoller,
                          decoration:
                              const InputDecoration(labelText: "Password"),
                          obscureText: true,
                        ),
                      ),
//confirm password
                      SizedBox(height: size.height * 0.03),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
                          controller: _confirmpasswordController,
                          decoration: const InputDecoration(
                              labelText: "Confirm Password"),
                          obscureText: true,
                        ),
                      ),
//SignUp Button
                      SizedBox(height: size.height * 0.05),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                        child: MaterialButton(
                          onPressed: () async {
                            bool shouldNavigate = await signUp() ?? true;
                            if (shouldNavigate) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Authentication(),
                                ),
                              );
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            width: size.width * 0.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80.0),
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 255, 136, 34),
                                  Color.fromARGB(255, 255, 177, 41)
                                ])),
                            padding: const EdgeInsets.all(0),
                            child: const Text(
                              "SIGN UP",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
//SignIn page button
                      Container(
                          alignment: Alignment.centerRight,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          child: MaterialButton(
                            onPressed: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Authentication(),
                                ),
                              );
                            },
                            child: const Text(
                              "Already Have an Account? Sign in",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2661FA)),
                            ),
                          ))
                    ],
                  ),
                ),
              )
            ])));
  }
}
