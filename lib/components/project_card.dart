import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title, desc, noOfBidding, budget, timeLeft, postedBy;
  final List<String> tags;

  ProjectCard({
    this.budget,
    this.noOfBidding,
    this.desc,
    this.title,
    this.tags,
    this.timeLeft,
    this.postedBy
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.all(8.0),
      //todo: main column
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //todo: first row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xff04090d),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

              Text('₹ $budget',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700
                ),
              )
            ],
          ),

          SizedBox(height: 5.0),

          //todo: second row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 50.0),
                width: MediaQuery.of(context).size.width / 2,
                child: Text(desc,
                  style: TextStyle(
                      color: Color(0xff04090d),
                      fontSize: 15.0,
                      //fontWeight: FontWeight.bold
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),

              Text('$noOfBidding\nbids',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0
                ),
              )
            ],
          ),

          SizedBox(height: 10.0),

          Container(
            height: 50.0,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: tags.length,
              separatorBuilder: (_, index) => SizedBox(width: 20.0),
              itemBuilder: (_, index) => Tag(tag: tags[index]),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$timeLeft days left',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold
                ),
              ),

              Text('posted by $postedBy',
                style: TextStyle(
                  color: Colors.black54
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Tag extends StatelessWidget {
  final String tag;

  Tag({this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.0),
      child: InkWell(
        onTap: (){},
        child: Text(tag,
          style: TextStyle(
            color: Colors.blue
          ),
        ),
      ),
    );
  }
}
