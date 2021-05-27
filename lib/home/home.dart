import 'dart:math';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../components/project_card.dart';

class Home extends StatefulWidget {
  PageController pageController;

  Home({this.pageController});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String group = 'tags';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text('Freelancer',
              style: TextStyle(
                color: Color(0xff04090d),
                fontSize: 22.0
              ),
            ),
            leading: IconButton(
              icon: Icon(LineIcons.userCircle),
              iconSize: 35.0,
              color: Color(0xff04090d),
              onPressed: (){
                widget.pageController.animateToPage(0, duration: Duration(milliseconds: 500), curve: Curves.ease);
              },
            ),
            actions: [
              Transform.rotate(
                angle: -pi/2,
                child: IconButton(
                  icon: Icon(LineIcons.search),
                  color: Color(0xff04090d),
                  onPressed: (){},
                ),
              ),
              IconButton(
                icon: Icon(LineIcons.stream),
                color: Color(0xff04090d),
                onPressed: (){
                  widget.pageController.animateToPage(2, duration: Duration(milliseconds: 500), curve: Curves.ease);
                },
              ),
            ],
            elevation: 0.0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: group == 'tags' ? 'Search by tags' : 'Search by budget',
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                          ),
                        ),
                      ),

                      Radio(
                        groupValue: group,
                        value: 'tags',
                        onChanged: (T){
                          setState(() => group = T);
                        },
                      ),
                      Text('Tags'),

                      SizedBox(width: 10.0),

                      Radio(
                        groupValue: group,
                        value: 'budget',
                        onChanged: (T){
                          setState(() => group = T);
                        },
                      ),
                      Text('Budget'),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white,
          body: Scrollbar(
            interactive: true,
            thickness: 5.0,
            radius: Radius.circular(20.0),
            child: ListView(
              children: [
                ProjectCard(
                  title: 'What is Lorem Ipsum? knwnwnwfmwpnfpw;qnnqw qe ',
                  desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  budget: '20,000',
                  noOfBidding: '4',
                  tags: [
                    'App Development',
                    'Flutter',
                    'Android',
                    'Dart',
                    'Firebase',
                    'Node.js',
                    'React.js'
                  ],
                  timeLeft: '6',
                  postedBy: 'Kunal Sahni',
                ),
                ProjectCard(
                  title: 'What is Lorem Ipsum? knwnwnwfmwpnfpw;qnnqw qe ',
                  desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  budget: '20,000',
                  noOfBidding: '4',
                  tags: [
                    'App Development',
                    'Flutter',
                    'Android',
                    'Dart',
                    'Firebase',
                    'Node.js',
                    'React.js'
                  ],
                  timeLeft: '6',
                  postedBy: 'Kunal Sahni',
                ),
                ProjectCard(
                  title: 'What is Lorem Ipsum? knwnwnwfmwpnfpw;qnnqw qe ',
                  desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  budget: '20,000',
                  noOfBidding: '4',
                  tags: [
                    'App Development',
                    'Flutter',
                    'Android',
                    'Dart',
                    'Firebase',
                    'Node.js',
                    'React.js'
                  ],
                  timeLeft: '6',
                  postedBy: 'Kunal Sahni',
                ),
                ProjectCard(
                  title: 'What is Lorem Ipsum? knwnwnwfmwpnfpw;qnnqw qe ',
                  desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  budget: '20,000',
                  noOfBidding: '4',
                  tags: [
                    'App Development',
                    'Flutter',
                    'Android',
                    'Dart',
                    'Firebase',
                    'Node.js',
                    'React.js'
                  ],
                  timeLeft: '6',
                  postedBy: 'Kunal Sahni',
                ),
                ProjectCard(
                  title: 'What is Lorem Ipsum? knwnwnwfmwpnfpw;qnnqw qe ',
                  desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  budget: '20,000',
                  noOfBidding: '4',
                  tags: [
                    'App Development',
                    'Flutter',
                    'Android',
                    'Dart',
                    'Firebase',
                    'Node.js',
                    'React.js'
                  ],
                  timeLeft: '6',
                  postedBy: 'Kunal Sahni',
                ),
                ProjectCard(
                  title: 'What is Lorem Ipsum? knwnwnwfmwpnfpw;qnnqw qe ',
                  desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  budget: '20,000',
                  noOfBidding: '4',
                  tags: [
                    'App Development',
                    'Flutter',
                    'Android',
                    'Dart',
                    'Firebase',
                    'Node.js',
                    'React.js'
                  ],
                  timeLeft: '6',
                  postedBy: 'Kunal Sahni',
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}