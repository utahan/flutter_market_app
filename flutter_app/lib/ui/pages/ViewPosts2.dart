import 'package:flutter/material.dart';
import 'package:pet_care/gateways/Injections.dart';
import 'package:pet_care/gateways/presenters/interfaces/IUiViewPosts.dart';
import 'package:pet_care/gateways/presenters/viewmodels/ViewLoginModel.dart';
import 'package:pet_care/ui/widgets/PetCard.dart';
import 'package:pet_care/ui/widgets/PetServiceOptions.dart';

import '../../NavigationService.dart';



class ViewPosts2 extends StatelessWidget {
  bool flag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: new Center(
						child: const Text('Drawer'),
					),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0,
        title: Text(
          "Rent a Cat",
          style: TextStyle(color: Colors.white),
        ),
        // leading: 
        //   Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: GestureDetector(
        //     onTap: () {
             
        //     },
        //     child: CircleAvatar(
        //       backgroundImage: AssetImage("avatar5.png"),
        //       backgroundColor: Colors.orange,
        //     ),
        //   ),
        // ),
       // iconTheme: new IconThemeData(color: Colors.green),
        

        
        actions: <Widget>[
          IconButton(
            //padding: EdgeInsets.only(right: 30.0),
            onPressed: () => print('Search'),
            icon: Icon(Icons.settings),
            iconSize: 30.0,
            color: Colors.blueGrey,
          ),
        ],
      ),
      body: Stack(
        children: [
          NestedScrollView(
            //controller: ,
            headerSliverBuilder: (context, value) {
              return [
                
                SliverAppBar(
                  floating: true,
                  backgroundColor: Colors.white,
                  expandedHeight: 155,
                  flexibleSpace: ListView(
                    children: <Widget>[
                      // Text(
                      //   "Bir Servis Seç",
                      //   style: TextStyle(
                      //       fontSize: 20, fontWeight: FontWeight.bold),
                      // ),

                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 10),
                        child: SizedBox(
                            width: 600,
                            height: 100,
                            child: PetServiceOptions()),
                      ),
                      SizedBox(height: 0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.explore,
                            color: Colors.redAccent,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Gülbahçe",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.height - 620),
                          FlatButton(
                            onPressed: () {},
                            color: Colors.white,
                            child: Text(
                              "Konumunu Değiştir",
                              style: TextStyle(color: Colors.redAccent),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: GridView.count(
              childAspectRatio: MediaQuery.of(context).size.height / 1000,
              crossAxisCount: 2,
              children: <Widget>[
                PetCard(),
                PetCard(),
                PetCard(),
                PetCard(),
                PetCard(),
                PetCard(),
                PetCard(),
                PetCard(),
                PetCard(),
                PetCard(),
                PetCard(),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 145,
            width: MediaQuery.of(context).size.width,
            child: Align(
              child: RaisedButton(
                color: Colors.redAccent,
                onPressed: () => print('shuffle pressed'),
                child: Text(
                  'En İyi Bakıcılar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
