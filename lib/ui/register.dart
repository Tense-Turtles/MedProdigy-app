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
  TextEditingController emailField = TextEditingController();

  // ignore: prefer_final_fields
  TextEditingController passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            //image: DecorationImage(
            //    image: AssetImage('assets/register.png'), fit: BoxFit.cover),
            // ignore: prefer_const_constructors
            color: Color.fromARGB(255, 255, 255, 255)),
        child: Scaffold(
            backgroundColor: Colors.transparent,

//Scrollable view for pixel error
            body: Stack(children: [
              SingleChildScrollView(
                // mainAxisAlignment: MainAxisAlignment.center,
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.18),
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
                        child: const TextField(
                          decoration: InputDecoration(labelText: "Name"),
                        ),
                      ),
// Mobile text field
                      SizedBox(height: size.height * 0.03),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: const TextField(
                          decoration:
                              InputDecoration(labelText: "Mobile Number"),
                        ),
                      ),
// Email text field
                      SizedBox(height: size.height * 0.03),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
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
                            bool shouldNavigate = await register(
                                emailField.text, passwordField.text);
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
