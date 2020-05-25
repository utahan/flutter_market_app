import 'package:flutter/material.dart';
import 'package:pet_care/ui/widgets/AddPetContinueButton.dart';
import 'package:pet_care/ui/widgets/AddPetHelperTop.dart';
import 'package:pet_care/ui/widgets/AddPetTitle.dart';

class AddPetPage2 extends StatefulWidget {
  final PageController _pageViewController;
  AddPetPage2(this._pageViewController);

  @override
  _AddPetPage2State createState() => _AddPetPage2State();
}

class _AddPetPage2State extends State<AddPetPage2> {
  int _groupValue1 = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          AddPetHelperTop(2),
          AddPetTitle("Evcil Hayvanınızın Türü"),
          SizedBox(height: 35),
          Row(
            children: <Widget>[
              Radio(
                groupValue: _groupValue1,
                value: 0,
                activeColor: Colors.black54,
                onChanged: (int e) => _updateGroupValue1(e),
              ),
              Text("Köpek")
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                groupValue: _groupValue1,
                value: 1,
                activeColor: Colors.black54,
                onChanged: (int e) => _updateGroupValue1(e),
              ),
              Text("Kedi")
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                groupValue: _groupValue1,
                value: 2,
                activeColor: Colors.black54,
                onChanged: (int e) => _updateGroupValue1(e),
              ),
              Text("Diğer")
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: FlatButton(
                  onPressed: () {
                    widget._pageViewController.nextPage(
                        duration: Duration(
                          milliseconds: 10,
                        ),
                        curve: Cubic(1, 1, 1, 1));
                  },
                  child: AddPetContinueButton()),
            ),
          )
        ],
      ),
    );
  }

  void _updateGroupValue1(int e) {
    setState(() {
      _groupValue1 = e;
    });
  }
}
