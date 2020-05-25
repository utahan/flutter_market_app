import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 240,
      child: TextField(
        
        textInputAction: TextInputAction.done,
        //autofocus: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "E-posta adresi",
        ),
      ),
    );
  }
}
