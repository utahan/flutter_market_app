import 'package:flutter/material.dart';

class AddPetContinueButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117,
      child: Row(
        children: <Widget>[
          Text(
            "Devam",
            style: TextStyle(
                color: Colors.pink, fontSize: 30, fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
