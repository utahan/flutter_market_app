import 'package:flutter/material.dart';

class AddPetHelperTop extends StatelessWidget {

  final int _number;

  AddPetHelperTop(this._number);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            width: 35,
            height: 5.9,
            color: _number==1 ? Colors.pink : Colors.black12,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 35,
            height: 5.9,
            color: _number==2 ? Colors.pink : Colors.black12,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 35,
            height: 5.9,
            color: _number==3 ? Colors.pink : Colors.black12,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 35,
            height: 5.9,
            color: _number==4 ? Colors.pink : Colors.black12,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 35,
            height: 5.9,
            color: _number==5 ? Colors.pink : Colors.black12,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 35,
            height: 5.9,
            color: _number==6 ? Colors.pink : Colors.black12,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 35,
            height: 5.9,
            color:_number==7 ? Colors.pink : Colors.black12,
          ),
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
