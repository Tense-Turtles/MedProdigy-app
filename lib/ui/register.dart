// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hospicare_app/firebase_auth/flutterfire.dart';
import 'package:hospicare_app/ui/authentication.dart';

// implement the ui from the backgroud.dart
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // ignore: prefer_final_fields
  TextEditingController nameField = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController emailField = TextEditingController();
  TextEditingController passwordField = TextEditingController();
  TextEditingController age = TextEditingController();

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
                          controller: nameField,
                          decoration: InputDecoration(labelText: "Name"),
                        ),
                      ),
// Age text Feild
                      SizedBox(height: size.height * 0.04),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
                          controller: age,
                          decoration: InputDecoration(labelText: "Age"),
                        ),
                      ),

// MobileNumber text field
                      SizedBox(height: size.height * 0.03),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
                          controller: phoneNumber,
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
                          controller: emailField,
                          decoration: const InputDecoration(labelText: "Email"),
                        ),
                      ),
// Password text field
                      SizedBox(height: size.height * 0.03),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
                          controller: passwordField,
                          decoration:
                              const InputDecoration(labelText: "Password"),
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
                            // ignore: await_only_futures
                            bool shouldNavigate = await register(
                                emailField.text,
                                passwordField.text,
                                phoneNumber.text,
                                nameField.text,
                                age.text); //need to make changes here
                            if (shouldNavigate) {
                              // ignore: use_build_context_synchronously
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
