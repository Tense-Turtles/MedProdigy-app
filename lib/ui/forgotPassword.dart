import 'package:firebase_auth/firebase_auth.dart';
import 'package:hospicare_app/ui/authentication.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  // static const routeName = '/for-pass';
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)
          //image: DecorationImage(
          //image: AssetImage('assets/main.png'), fit: BoxFit.cover),
          // ignore: prefer_const_constructors
          ),
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.topCenter,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: const Text(
                "Forgot Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 30),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              child: TextFormField(
                validator: (val) {
                  return RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(val!)
                      ? null
                      : "Enter correct email";
                },
                controller: email,
                decoration: const InputDecoration(
                  hintText: "something@email.com",
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 116, 116, 116),
                  ),
                  labelText: "Email",
                  labelStyle: const TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: MaterialButton(
            onPressed: () async {
              //  AuthMethods authMethods = AuthMethods();
              FirebaseAuth.instance
                  .sendPasswordResetEmail(
                    email: email.text,
                  )
                  .then((value) => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Authentication(),
                      )));
            },
            // height: 50.0,
            // color: const Color.fromARGB(255, 255, 136, 34),
            // minWidth: 90,

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),

            padding: const EdgeInsets.all(10),
            // padding: const EdgeInsets.all(0.0),
            child: Ink(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 50.0,
              decoration: const BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 255, 136, 34),
                  Color.fromARGB(255, 255, 177, 41)
                ]),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Container(
                // constraints: const BoxConstraints(
                //     // minWidth: 88.0,

                //     minHeight: 36.0), // min sizes for Material buttons
                alignment: Alignment.center,
                child: const Text(
                  "Reset Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
