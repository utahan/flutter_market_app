import 'package:flutter/material.dart';
import 'package:pet_care/ui/widgets/AddPetContinueButton.dart';
import 'package:pet_care/ui/widgets/AddPetHelperTop.dart';
import 'package:pet_care/ui/widgets/AddPetTitle.dart';

class AddPetPage3 extends StatefulWidget {

  final PageController _pageViewController;
  AddPetPage3(this._pageViewController);

  @override
  _AddPetPage3State createState() => _AddPetPage3State();
}

class _AddPetPage3State extends State<AddPetPage3> {

  int _groupValue1 = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                AddPetHelperTop(3),
                AddPetTitle("Evcil Hayvanınızın Cinsiyeti"),
                SizedBox(height: 35),
                Row(
                  children: <Widget>[
                    Radio(
                      groupValue: _groupValue1,
                      value: 0,
                      activeColor: Colors.black54,
                      onChanged: (int e) => _updateGroupValue1(e),
                    ),
                    Text("Erkek")
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
                    Text("Dişi")
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
                      child: AddPetContinueButton()
                    ),
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