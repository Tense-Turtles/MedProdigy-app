import 'package:hospicare_app/firebase_auth/flutterfire.dart';
import 'package:flutter/material.dart';
import 'home_view.dart';

class Authentication extends StatefulWidget {
  Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _usename = TextEditingController();
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 61, 227, 230),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Login for Hospicare',
                style: TextStyle(
                    //fontFamily: 'TrajanPro'
                    color: Color.fromARGB(255, 48, 48, 48),
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'SourceCodePro',
                    fontSize: 30),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: TextFormField(
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                controller: _usename,
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 116, 116, 116),
                  ),
                  labelText: "Username",
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: TextFormField(
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                controller: _emailField,
                decoration: InputDecoration(
                  hintText: "something@email.com",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 116, 116, 116),
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: TextFormField(
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                controller: _passwordField,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 76, 72, 72),
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await register(_emailField.text, _passwordField.text);
                  if (shouldNavigate) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeView(),
                      ),
                    );
                  }
                },
                child: Text("Register"),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: MaterialButton(
                  onPressed: () async {
                    bool shouldNavigate =
                        await signIn(_emailField.text, _passwordField.text);
                    if (shouldNavigate) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeView(),
                        ),
                      );
                    }
                  },
                  child: Text("Login")),
            ),
          ],
        ),
      ),
    );
  }
}
