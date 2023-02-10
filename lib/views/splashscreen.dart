import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/configurations/colors.dart';

import 'loginscreen.dart';

void main() {
  runApp(splashScreen());
}

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Loginscreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      // backgroundColor: backgroundColor;
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/films2.png",
            fit: BoxFit.fill,
          ),
          // Container(
          //   height: 250,
          //   width: 250,
          //   color: Colors.black,
          // ),
          Container(
            child: Text(
              "Splash Screen",
              style: TextStyle(fontSize: 20.09, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ));
  }
}
