import 'package:flutter/material.dart';
import 'dart:async';

import 'home/home_pager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freelancer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Product Sans'
      ),
      debugShowCheckedModeBanner: false,
      home: HomePager(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      (){
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (_) => HomePager()
        ));
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Freelancer',
          style: TextStyle(
            color: Color(0xff04090d),
            fontSize: 30.0
          ),
        ),
      ),
    );
  }
}