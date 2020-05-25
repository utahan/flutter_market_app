import 'package:flutter/material.dart';
import 'package:pet_care/ui/pages/BreedSearch.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  int _groupValue1 = -1;
  int _groupValue2 = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print("object");
          },
          color: Colors.black54,
        ),
        backgroundColor: Colors.white70,
        title: Text(
          "Filtreler",
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                print("object");
              },
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 14),
                child: Text(
                  "Ne Arıyorsun?",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                          groupValue: _groupValue1,
                          value: 0,
                          activeColor: Colors.black54,
                          onChanged: (int e) => _updateGroupValue1(e),
                        ),
                        Text("Bir süreliğine bakmak için Evcil Hayvan")
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
                        Text("Sahiplenmek için Evcil Hayvan")
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
                        Text("Gezdirmek için Evcil Hayvan")
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          groupValue: _groupValue1,
                          value: 3,
                          activeColor: Colors.black54,
                          onChanged: (int e) => _updateGroupValue1(e),
                        ),
                        Text("Kayıp Evcil Hayvan İlanı")
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black54,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 14),
                child: Text(
                  "Evcil Hayvanın Türü",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Radio(
                    groupValue: _groupValue2,
                    value: 0,
                    activeColor: Colors.black54,
                    onChanged: (int e) => _updateGroupValue2(e),
                  ),
                  Text("Köpek"),
                  Radio(
                    groupValue: _groupValue2,
                    value: 1,
                    activeColor: Colors.black54,
                    onChanged: (int e) => _updateGroupValue2(e),
                  ),
                  Text("Kedi"),
                  Radio(
                    groupValue: _groupValue2,
                    value: 2,
                    activeColor: Colors.black54,
                    onChanged: (int e) => _updateGroupValue2(e),
                  ),
                  Text("Diğer")
                ],
              ),
              Divider(
                color: Colors.black54,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 14),
                child: Text(
                  "Cinsiyet",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              Row(
                children: <Widget>[
                  Radio(
                    groupValue: _groupValue2,
                    value: 0,
                    activeColor: Colors.black54,
                    onChanged: (int e) => _updateGroupValue2(e),
                  ),
                  Text("Erkek"),
                  Radio(
                    groupValue: _groupValue2,
                    value: 1,
                    activeColor: Colors.black54,
                    onChanged: (int e) => _updateGroupValue2(e),
                  ),
                  Text("Dişi"),
                ],
              ),
              Divider(
                color: Colors.black54,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 14),
                child: Text(
                  "Yaş",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              Row(
                children: <Widget>[
                  Radio(
                    groupValue: _groupValue2,
                    value: 0,
                    activeColor: Colors.black54,
                    onChanged: (int e) => _updateGroupValue2(e),
                  ),
                  Text("Bebek"),
                  Radio(
                    groupValue: _groupValue2,
                    value: 1,
                    activeColor: Colors.black54,
                    onChanged: (int e) => _updateGroupValue2(e),
                  ),
                  Text("Yetişkin"),
                  Radio(
                    groupValue: _groupValue2,
                    value: 2,
                    activeColor: Colors.black54,
                    onChanged: (int e) => _updateGroupValue2(e),
                  ),
                  Text("Dede")
                ],
              ),
              Divider(
                color: Colors.black54,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 14),
                child: Text(
                  "Cins",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: FlatButton(
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: BreedSearch()
                    );
                  },
                  child: Text(
                    "Cins Seçmek için Tıkla",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black54,
                        fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.24,
            //alignment: Alignment.bottomCenter,

            child: ButtonTheme(
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              child: RaisedButton(
                color: Colors.pinkAccent,
                onPressed: () => print('shuffle pressed'),
                child: Text(
                  'Filtreleri Uygula',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _updateGroupValue1(int e) {
    setState(() {
      _groupValue1 = e;
    });
  }

  void _updateGroupValue2(int e) {
    setState(() {
      _groupValue2 = e;
    });
  }
}
