import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomerComments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Container(
                  width: 44.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("cat1.jpeg")
                    )
                  )
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Yusuf",
                  style: TextStyle(
                    fontSize: 19
                  ),
                )
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Row(
            children: <Widget>[
              RatingBarIndicator(
                rating: 3.41,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 25.0,
                direction: Axis.horizontal,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Fena Değil...",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            "1 Ekim 2019",
            style: TextStyle(
              color: Colors.grey
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            "Doğrulanmış Müşteri",
            style: TextStyle(
              color: Colors.orange
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            "Kedime çok iyi baktı cok memnun kaldım bla bla herkese tavsiye ediyorum ",
            style: TextStyle(
              fontSize: 17
            ),
          ),
        ),
      ],
    );
  }
}
