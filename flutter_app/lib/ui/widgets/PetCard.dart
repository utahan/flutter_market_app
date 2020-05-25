import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            margin:EdgeInsets.only(left: 15,right: 15,bottom: 20),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                          'cat2.jpeg',
                         // width: 300,
                          height: 300,
                          fit:BoxFit.fill

                      ),
                    ),
                    ListTile(
                        trailing: Text(
                          "Sahiplen",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20
                          ),
                        ),
                        title: Text(
                          'Karabaş',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.pink),
                        ),
                        subtitle: Text(
                          "Çoban Köpeği",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                              color: Colors.orange),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );




    // return Column(
    //   children: <Widget>[
    //     Card(
    //       clipBehavior: Clip.antiAliasWithSaveLayer,
    //       semanticContainer: true,
    //       color: Colors.white,
    //       //child: Center(
    //       //margin: EdgeInsets.all(18),


    //       child: Image.asset("cat2.jpeg"),

    //     ),
    //     SizedBox(
    //       width: MediaQuery.of(context).size.width / 2.05,
          
    //       child: Card(
    //         color: Colors.white,
    //         child: Center(
    //           child: Text(
    //             "Karabaş, Female\n  "

    //               "2 week / 500 TL"
    //             ),
    //         ),
    //       ),
    //     )
    //   ],
    // );
  }
}
