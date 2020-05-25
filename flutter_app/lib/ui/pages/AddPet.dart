import 'package:flutter/material.dart';
import 'package:pet_care/ui/widgets/AddPetContinueButton.dart';
import 'package:pet_care/ui/widgets/AddPetHelperTop.dart';
import 'package:pet_care/ui/widgets/AddPetPage1.dart';
import 'package:pet_care/ui/widgets/AddPetPage2.dart';
import 'package:pet_care/ui/widgets/AddPetPage3.dart';
import 'package:pet_care/ui/widgets/AddPetPage4.dart';
import 'package:pet_care/ui/widgets/AddPetPage5.dart';
import 'package:pet_care/ui/widgets/AddPetPage6.dart';
import 'package:pet_care/ui/widgets/AddPetPage7.dart';
import 'package:pet_care/ui/widgets/AddPetTitle.dart';


class AddPet extends StatelessWidget {
  PageController _pageViewController = PageController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: Text(
          "Evcil Hayvan Ekle",
          style: TextStyle(color: Colors.black54),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black54,
            size: 30,
          ),
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageViewController,
        children: <Widget>[
          AddPetPage1(_pageViewController),
          AddPetPage2(_pageViewController),
          AddPetPage3(_pageViewController),
          AddPetPage4(_pageViewController),
          AddPetPage5(_pageViewController),
          AddPetPage6(_pageViewController),
          AddPetPage7(_pageViewController),
          Text("data"),
          Text("asd")
        ],
      ),
    );
  }

  
}
