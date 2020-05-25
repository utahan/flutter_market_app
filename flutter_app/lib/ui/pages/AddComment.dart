import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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

class AddComment extends StatefulWidget {
  @override
  _AddCommentState createState() => _AddCommentState();
}

class _AddCommentState extends State<AddComment> {

  String _currentItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .1,
        backgroundColor: Colors.white54,
        centerTitle: true,
        title: Text(
          "Yeni Yorum Ekle",
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
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: DropdownButton(
            items: [
              
              DropdownMenuItem(
                child: Text("Evcil Hayvanımı Gezdirdi"),
                value: "Evcil Hayvanımı Gezdirdi",
              ),
              DropdownMenuItem(
                child: Text("Evcil Hayvanıma Baktı"),
                value: "Evcil Hayvanıma Baktı",
              ),
              DropdownMenuItem(
                child: Text("Evcil Hayvan Sahiplenme"),
                value: "Evcil Hayvan Sahiplenme",
              ),
              
              DropdownMenuItem(
                child: Text("Kayıp Evcil Hayvan"),
                value: "Kayıp Evcil Hayvan",
              ),
            ],
            hint: Text("Aldığınız Servis"),
            onChanged: _changeDropDownItem,
            value: _currentItem,
            style:
                TextStyle(color: Colors.pink, fontWeight: FontWeight.w600),
            underline: Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Divider(
                color: Colors.black87,
              ),
            ),
        ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: RatingBar(
                initialRating: 3,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.pink,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 22),
            child: Card(
                elevation: .1,
                color: Colors.white70,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    maxLength: 25,
                    maxLines: 1,
                    decoration: InputDecoration.collapsed(hintText: "Özet..."),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
            child: Card(
                elevation: .1,
                color: Colors.white70,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    maxLength: 100,
                    maxLines: 10,
                    decoration: InputDecoration.collapsed(hintText: "Yorum..."),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Container(
                width: 150,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Yorum Yap!",
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.pink,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _changeDropDownItem(String selectedItem) {
    setState(() {
      _currentItem = selectedItem;
    });
  }
}
