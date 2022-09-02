import 'package:flutter/material.dart';
import 'package:hospicare_app/ui/authentication.dart';
import 'package:hospicare_app/ui/themes/light_color.dart';
import 'package:hospicare_app/ui/themes/text_styles.dart';
import 'package:hospicare_app/ui/home_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomeView()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/doctor_face.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .6,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffb1a5f6), Color(0xffb1a5f6)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      stops: [.5, 6]),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              // Image.asset(
              //   "assets/heartbeat.png",
              //   color: Colors.white,
              //   height: 100,
              // ),
              Text(
                "MediProdigy",
                style: TextStyles.h1Style,
              ),
              Text(
                "By healthcare Evolution",
                style: TextStyles.bodySm,
              ),
              Expanded(
                flex: 7,
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
