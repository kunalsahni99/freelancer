import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Category extends StatefulWidget {
  PageController pageController;

  Category({this.pageController});

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              title: Text('Categories',
                style: TextStyle(
                  color: Color(0xff04090d),
                  fontWeight: FontWeight.bold
                )
              ),
              leading: IconButton(
                icon: Icon(LineIcons.arrowLeft),
                color: Color(0xff04090d),
                onPressed: (){
                  widget.pageController.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.ease);
                },
              ),
            ),
            body: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.black,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset('assets/web_it_sw_mobile.png',
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }
    );
  }
}