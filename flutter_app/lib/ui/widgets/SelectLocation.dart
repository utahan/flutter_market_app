import 'package:flutter/material.dart';

class SelectLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Konum",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Tıkla ve Seç",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.pink),
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black87,
          )
        ],
      ),
    );
  }
}
