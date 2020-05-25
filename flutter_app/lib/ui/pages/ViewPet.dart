import 'package:flutter/material.dart';

class ViewPet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20,top: 55),
        child: Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
         
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(0),
                child: InkWell(
                  //onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            //topLeft: Radius.circular(8.0),
                            //topRight: Radius.circular(8.0),
                            ),
                        child: Image.asset('cat2.jpeg',
                            // width: 300,
                            height: 290,
                            fit: BoxFit.fill),
                      ),
                      ListTile(
                        trailing: Icon(
                          Icons.favorite_border,
                          color: Colors.pinkAccent,
                          size: 30,
                        ),
                        title: Text(
                          'Lugui',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.pink),
                        ),
                        subtitle: Text(
                          "Mixed Breed",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                              color: Colors.orange),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 20, top: 15),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Sahiplen",
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black45),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Dog",
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.black45),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black45),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Yaşlı // 11 yaşında",
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.black45),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black45),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Small // 9 kg",
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.black45),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, right: 35),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Aşıları Tam , Sinirlenirse ısırır, Havlamaz. 10 kiloya kadar çeker.",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 17),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, right: 25),
                                child: Divider(
                                  color: Colors.black54,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 65),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 27),
                                      child: Text(
                                        "Hasan Ali Yılmaz",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 20),
                                      ),
                                    ),
                                    leading: Container(
                                        width: 55,
                                        height: 65,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image:
                                                    AssetImage("cat1.jpeg")))),
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.0758,
            //alignment: Alignment.bottomCenter,

            child: ButtonTheme(
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              child: RaisedButton(
                color: Colors.pinkAccent,
                onPressed: () => print('shuffle pressed'),
                child: Text(
                  'İletişime Geç!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
