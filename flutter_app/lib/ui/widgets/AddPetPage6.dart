import 'package:flutter/material.dart';
import 'package:pet_care/ui/widgets/AddPetContinueButton.dart';
import 'package:pet_care/ui/widgets/AddPetHelperTop.dart';
import 'package:pet_care/ui/widgets/AddPetTitle.dart';

class AddPetPage6 extends StatelessWidget {
  final PageController _pageViewController;

  AddPetPage6(this._pageViewController);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          AddPetHelperTop(6),
          AddPetTitle("Evcil Hayvanız Hakkında"),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Card(
                color: Colors.white38,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration.collapsed(
                        hintText: "Bilgiler..."),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: FlatButton(
                onPressed: () {
                  _pageViewController.nextPage(
                      duration: Duration(
                        milliseconds: 10,
                      ),
                      curve: Cubic(1, 1, 1, 1));
                },
                child: AddPetContinueButton()),
          )
        ],
      ),
    );
  }
}
