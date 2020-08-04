import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quizstar/src/pages/modules/modules.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Modules(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Image.asset(
            "images/logo_transparent_background.png",
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
