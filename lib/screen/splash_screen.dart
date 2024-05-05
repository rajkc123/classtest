// lib/screens/splash_screen.dart

import 'dart:async';

import 'package:classtest/screen/gridview_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final String name;

  SplashScreen({required this.name});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => GridViewScreen(name: widget.name)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome ${widget.name}',
              style: TextStyle(fontSize: 24),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
