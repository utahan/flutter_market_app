import 'package:flutter/material.dart';

class ReviewOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("petsitting6.jpeg"), fit: BoxFit.fill),
                  //shape: BoxShape.circle
                ),
              ),
              Text(
                "Bak",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("adoption7.jpeg"), fit: BoxFit.fill),
                  //shape: BoxShape.circle
                ),
              ),
              Text(
                "Sahiplen",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            print("object");
          },
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("dogwalking.jpeg"), fit: BoxFit.fill),
                  //shape: BoxShape.circle
                ),
              ),
              Text(
                "Gezdir",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        
        
      ],
    );
  }
}
