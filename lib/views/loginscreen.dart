import 'package:flutter/material.dart';
import 'package:movie_app/configurations/colors.dart';
import '../controllers/action.dart';
import 'customWidget.dart';

void main() => runApp(myMovie());

class myMovie extends StatelessWidget {
  const myMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Loginscreen(),
    );
  }
}

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
            child: SafeArea(
                child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    "assets/images/popcorns.png",
                    fit: BoxFit.cover,
                  ),
                ),
                myTextWidget("Username", titleColor),
                TextField(),
                myTextWidget("Password", titleColor),
                TextField(),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buttonWidget("Login", onLogin, login),
                      buttonWidget("Register", onRegister, register),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ))),
      ),
    );
  }
}
