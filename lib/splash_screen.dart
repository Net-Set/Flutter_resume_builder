import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resumebuilder/Testing_layout.dart';
import 'package:resumebuilder/home_main.dart';
import 'package:resumebuilder/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 41, 55, 78),
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //       begin: Alignment.topRight,
        //       end: Alignment.bottomLeft,
        //       colors: [
        //         Color.fromARGB(0, 4, 9, 17),
        //         Color.fromARGB(0, 7, 22, 46),
        //       ]),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/logo_call.png',
                  height: 200.0,
                  width: 200.0,
                ),
                Text(
                  "A whole grocery store\n at your fingertips",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromARGB(255, 65, 63, 192)),
            ),
          ],
        ),
      ),
    );
  }
}
