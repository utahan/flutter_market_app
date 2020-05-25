import 'package:flutter/material.dart';
import 'package:pet_care/ui/pages/BreedSearch.dart';
import 'package:pet_care/ui/widgets/AddPetContinueButton.dart';
import 'package:pet_care/ui/widgets/AddPetHelperTop.dart';
import 'package:pet_care/ui/widgets/AddPetTitle.dart';

class AddPetPage5 extends StatelessWidget {

  final PageController _pageViewController;
  


  AddPetPage5(this._pageViewController);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                AddPetHelperTop(5),
                AddPetTitle("Evcil Hayvanınızın Cinsi?"),
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Align(
                  alignment: Alignment.centerLeft,
                  child: FlatButton(
                    onPressed: () {
                      showSearch(
                        context: context,
                        delegate: BreedSearch()
                      );
                    },
                    child: Text(
                      "Cins Seç",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black38,
                          fontSize: 28),
                    ),
                  ),
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