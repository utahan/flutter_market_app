import 'package:flutter/material.dart';

class UserProfilePets2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage("cat2.jpeg")))),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 150,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lugui',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.pink),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Mixed Breed",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 17,
                            color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FlatButton(
              onPressed: (){print("object");},
              child: Text(
                "İlan Ver!",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 18,
                  color: Colors.deepOrange
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){},
              color: Colors.amber,
              child: Text(
                "Düzenle",
                style: TextStyle(
                  color: Colors.black54
                ),
              ),
            ),
            SizedBox(width: 20),
            RaisedButton(
              onPressed: (){},
              color: Colors.redAccent,
              child: Text(
                "Sil",
                style: TextStyle(
                  color: Colors.black54
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.black54,
        )
      ],
    );
  }
}
