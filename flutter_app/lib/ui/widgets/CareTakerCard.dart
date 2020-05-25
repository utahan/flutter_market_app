import 'package:flutter/material.dart';

class CareTakerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              
              
              children: <Widget>[
                SizedBox(width: 8,),
                
                Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill, image: AssetImage("cat2.jpeg")))),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: 150,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Ali Veli',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.pink),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 25,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4.7",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17,
                                    color: Colors.orange),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "İzmir, Turkey",
              style: TextStyle(fontSize: 20, color: Colors.black54,),
              
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8,left: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "55 Yorum",
              style: TextStyle(
                color: Colors.orange
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.black54,
        )
      ],
    );
  }
}
