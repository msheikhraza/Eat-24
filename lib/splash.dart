
import 'dart:async';

import 'package:flutter/material.dart';

import 'intropages/intropages.dart';




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
            () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => IntroPage()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Stack(
          children: [

            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Image.asset(
                'assets/splashbg.png',
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/logo.png',
                height: 67,
                width: 229,

              ),
            ),

          ],
        ),
      ),
    );
  }
}
