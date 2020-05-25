import 'package:flutter/material.dart';

class UserProfilePets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          semanticContainer: true,
          color: Colors.white,
          //child: Center(
          //margin: EdgeInsets.all(18),

          child: Image.asset("cat1.jpeg"),
        ),
        Row(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 105,
                child: Card(
                  color: Colors.white,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Karabaş\n "
                            "5 yaşında\n "
                            "Cinsi Erkek\n "
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 50,
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 4.5,
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.green,
                      onPressed: () {
                        print("ilan");
                      },
                      child: Text("İlan Ver",style: TextStyle(color: Colors.white),),
                    ),
                    RaisedButton(
                      color: Colors.red,
                      onPressed: () {
                        print("ilan");
                      },
                      child: Text("Sil",style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
