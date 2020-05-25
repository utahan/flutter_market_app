import 'package:flutter/material.dart';
import 'package:pet_care/ui/widgets/AddPetContinueButton.dart';
import 'package:pet_care/ui/widgets/AddPetHelperTop.dart';
import 'package:pet_care/ui/widgets/AddPetTitle.dart';

class AddPetPage4 extends StatelessWidget {

  final PageController _pageViewController;
  


  AddPetPage4(this._pageViewController);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                AddPetHelperTop(4),
                AddPetTitle("Evcil Hayvanınızın Yaşı?"),
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink),
                        ),
                        hintText: "Yaş",
                        hintStyle:
                            TextStyle(fontSize: 30, color: Colors.black38)),
                  ),
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
                    child: AddPetContinueButton()
                  ),
                )
              ],
            ),
          );
  }
}