import 'package:flutter/material.dart';
import 'package:movie_app/views/landingPage.dart';
import 'package:movie_app/views/loginscreen.dart';

void main() => runApp(myApplication());

class myApplication extends StatelessWidget {
  const myApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const landingPage(),
    );
  }
}
