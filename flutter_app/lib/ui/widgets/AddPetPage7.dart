import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pet_care/ui/pages/BreedSearch.dart';
import 'package:pet_care/ui/widgets/AddPetContinueButton.dart';
import 'package:pet_care/ui/widgets/AddPetHelperTop.dart';
import 'package:pet_care/ui/widgets/AddPetTitle.dart';

class AddPetPage7 extends StatefulWidget {
  final PageController _pageViewController;

  AddPetPage7(this._pageViewController);

  @override
  _AddPetPage7State createState() => _AddPetPage7State();
}

class _AddPetPage7State extends State<AddPetPage7> {
  File _image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          AddPetHelperTop(7),
          AddPetTitle("Fotoğraf Seç"),
          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: callDialog,
                  child: _image == null
                      ? Container(
                          width: 175,
                          height: 175,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple),
                              image: DecorationImage(
                                  //fit: BoxFit.fill,
                                  image: AssetImage("plus.png"))),
                        )
                      : Container(
                          width: 175,
                          height: 175,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple),
                              image: DecorationImage(
                                  fit: BoxFit.fill, image: FileImage(_image))),
                        ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: FlatButton(
                onPressed: () {
                  widget._pageViewController.nextPage(
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

  Future openCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  Future openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  void callDialog() {
    _optionsDialogBox(context);
  }

  Future<void> _optionsDialogBox(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  Text(
                    "Bir Fotoğraf Seç",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 35),
                  GestureDetector(
                    child: new Text(
                      'Fotoğraf Çek',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: openCamera,
                  ),
                  SizedBox(height: 7),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    child: new Text(
                      'Galeriden Seç',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: openGallery,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
