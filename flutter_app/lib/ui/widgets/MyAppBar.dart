import 'package:flutter/material.dart';

class MyAppBar extends PreferredSize {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "asdlkm",
          style: TextStyle(color: Colors.lightBlueAccent),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("avatar3.png"),
            backgroundColor: Colors.orange,

          ),
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.face),
        //   onPressed: () {},
        //   iconSize: 30,
        //   color: Colors.lightBlueAccent,
        // ),
        actions: <Widget>[
          IconButton(
            //padding: EdgeInsets.only(right: 30.0),
            onPressed: () => print('Search'),
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.lightBlueAccent,
          ),
        ],
      );
  }
}