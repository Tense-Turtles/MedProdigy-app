// ignore_for_file: avoid_unnecessary_containers, unnecessary_const, sized_box_for_whitespace, use_build_context_synchronously

import 'package:hospicare_app/firebase_auth/flutterfire.dart';
import 'package:flutter/material.dart';
import 'package:hospicare_app/ui/register.dart';
import 'home_view.dart';

class Authentication extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Authentication({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api, no_logic_in_create_state
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  // ignore: prefer_final_fields
  TextEditingController emailField = TextEditingController();
  // ignore: prefer_final_fields
  TextEditingController passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36),
                textAlign: TextAlign.left,
              ),
            ),
//Email Text-Field
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              padding: const EdgeInsets.only(top: 40),
              child: TextFormField(
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                controller: emailField,
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
// Password Text-Field
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: TextFormField(
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                controller: passwordField,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "password",
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 76, 72, 72),
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
//Forgot Password button
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: const Text(
                "Forgot your password?",
                style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
              ),
            ),
//Login Button snippet
            SizedBox(height: size.height * 0.05),
            //SizedBox(height: MediaQuery.of(context).size.height / 35),
            Container(
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await signIn(emailField.text, passwordField.text);
                  if (shouldNavigate) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeView(),
                      ),
                    );
                  }
                },
                // height: 50.0,
                // color: const Color.fromARGB(255, 255, 136, 34),
                // minWidth: 90,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),

                padding: const EdgeInsets.all(0.0),
                // padding: const EdgeInsets.all(0.0),
                child: Ink(
                  width: size.width * 0.5,
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
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255),),
                    ),
                  ),
                ),
              ),
            ),
//Register Button snippet
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            // Alignment need to be done
            Container(
              // alignment:,
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: MaterialButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Register(),
                    ),
                  );
                },
                child: const Text(
                  "Don't Have an Account? Sign up",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
