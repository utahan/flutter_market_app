import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_care/ui/widgets/CustomerComments.dart';
import 'package:pet_care/ui/widgets/ReviewOptions.dart';

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  String _currentItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 45,
              height: 45,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Colors.pink,
                  onPressed: () => print('shuffle pressed'),
                  child: Icon(Icons.add),
                ),
              ),
            ),
            SizedBox(width: 15),
            Text(
              "Yorum Ekle!",
              style: TextStyle(
                color: Colors.pink,
                fontSize: 20
              ),
            )
          ],
        ),
        SizedBox(height: 20,),
        Text(
          "Kullanıcı oyları ve yorumlar",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
        SizedBox(
          height: 20,
        ),
        DropdownButton(
          items: [
            DropdownMenuItem(
              child: Text("Bütün Yorumlar"),
              value: "Bütün Yorumlar",
            ),
            DropdownMenuItem(
              child: Text("Gezdirdiği Evcil Hayvanlar"),
              value: "Gezdirdiği Evcil Hayvanlar",
            ),
            DropdownMenuItem(
              child: Text("Baktığı Evcil Hayvanlar"),
              value: "Baktığı Evcil Hayvanlar",
            ),
            DropdownMenuItem(
              child: Text("Sahiplendiği Evcil Hayvanlar"),
              value: "Sahiplendiği Evcil Hayvanlar",
            ),
          ],
          hint: Text("Bütün Yorumlar"),
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
        // ReviewOptions(),
        SizedBox(
          height: 15,
        ),
        RatingBarIndicator(
          rating: 3.41,
          itemBuilder: (context, index) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          itemCount: 5,
          itemSize: 40.0,
          direction: Axis.horizontal,
        ),
        Text(
          "3.41 / 5",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "24 Müşteri Yorumu",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CustomerComments(),
        )
      ],
    );
  }

  _changeDropDownItem(String selectedItem) {
    setState(() {
      _currentItem = selectedItem;
    });
  }
}
