import 'package:flutter/material.dart';
import 'package:pet_care/ui/widgets/CareTakerCard.dart';
import 'package:pet_care/ui/widgets/SelectLocation.dart';

class BestCareTakers extends StatefulWidget {

  @override
  _BestCareTakersState createState() => _BestCareTakersState();
}

class _BestCareTakersState extends State<BestCareTakers> {
  String _currentItem;
  String _ranking;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .001,
        //centerTitle: true,
        backgroundColor: Colors.white70,
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            "En İyi Bakıcılar",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w400
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.pink),
          onPressed: (){},
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: (){print("object");},
            child: SelectLocation()
          )
        ],
      ),

      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              DropdownButton(
                  items: [
                    DropdownMenuItem(
                      child: Text("Karışık"),
                      value: "Karışık",
                    ),
                    DropdownMenuItem(
                      child: Text("Gezdirme"),
                      value: "Gezdirme",
                    ),
                    DropdownMenuItem(
                      child: Text("Bakma"),
                      value: "Bakma",
                    ),
                    DropdownMenuItem(
                      child: Text("Sahiplenme"),
                      value: "Sahiplenme",
                    ),
                    DropdownMenuItem(
                      child: Text("Kayıp Hayvan"),
                      value: "Kayıp Hayvan",
                    ),
                  ],
                  hint: Text("Servis Seç"),
                  onChanged: _changeDropDownItem,
                  value: _currentItem,
                  style:
                      TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600),
                  underline: Padding(
                    padding: const EdgeInsets.only(top: 55),
                    child: Divider(
                      color: Colors.black87,
                    ),
                  ),
                ),

                DropdownButton(
                  items: [
                   
                    DropdownMenuItem(
                      child: Text("En Çok Yorumlanan"),
                      value: "En Çok Yorumlanan",
                    ),
                    DropdownMenuItem(
                      child: Text("En İyi Oy Alan"),
                      value: "En İyi Oy Alan",
                    ),
                  ],
                  hint: Text("Sıralama"),
                  onChanged: _changeDropDownItem2,
                  value: _ranking,
                  style:
                      TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600),
                  underline: Padding(
                    padding: const EdgeInsets.only(top: 55),
                    child: Divider(
                      color: Colors.black87,
                    ),
                  ),
                ),
            ],
          ),
          Divider(color: Colors.black54,),
          CareTakerCard()

        ],
      ),
      
    );
  }

  _changeDropDownItem(String selectedItem) {
    setState(() {
      _currentItem = selectedItem;
    });
  }

  _changeDropDownItem2(String selectedItem) {
    setState(() {
      _ranking = selectedItem;
    });
  }
}