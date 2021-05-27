import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          return Scaffold(
            body: Center(
              child: Text('Profile',
                style: TextStyle(
                    color: Color(0xff04090d),
                    fontSize: 30.0
                ),
              ),
            ),
          );
        }
    );
  }
}