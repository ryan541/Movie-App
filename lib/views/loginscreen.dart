import 'package:flutter/material.dart';
import 'package:movie_app/configurations/colors.dart';
import '../controllers/action.dart';
import 'customWidget.dart';
import 'landingPage.dart';

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
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "assets/images/popcorns.png",
                    fit: BoxFit.cover,
                  ),
                ),
                myTextWidget("Username", titleColor),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Enter Username",
                      iconColor: Colors.cyan,
                      prefix: Icon(Icons.offline_bolt),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: activeColor),
                          borderRadius: BorderRadius.circular(5)),
                    )),
                SizedBox(
                  height: 10,
                ),
                myTextWidget("Password", titleColor),
                TextField(),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buttonWidget("Login", () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const landingPage()));
                      }, login),
                      buttonWidget("Register", onRegister, register),
                    ],
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () => print("Forgot Password"),
                ),
              ],
            ),
          ),
        ))),
      ),
    );
  }
}
