import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:pet_care/NavigationService.dart';
import 'package:pet_care/gateways/Injections.dart';
import 'package:pet_care/gateways/presenters/interfaces/IUiViewPosts.dart';
import 'package:pet_care/gateways/presenters/viewmodels/ViewLoginModel.dart';
import 'package:pet_care/ui/widgets/CustomDrawer.dart';
import 'package:pet_care/ui/widgets/PetCard.dart';
import 'package:pet_care/ui/widgets/PetServiceOptions.dart';
import 'package:pet_care/ui/widgets/SelectLocation.dart';

class ViewPosts3 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 59999, 
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30,right: 35),
                      child: FlatButton(
                        onPressed: (){print("asd");},
                        child: Text(
                          "Filtrele",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    flex: 41111,
                    child: GestureDetector(
                      onTap: (){
                        print("object");
                        },
                      child: SelectLocation()
                    ),
                  ),
                ],
              ),
            ),
            // leading: Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: GestureDetector(
            //     onTap: () {
            //       _scaffoldKey.currentState.openDrawer();
            //       //Scaffold.of(context).openDrawer();
            //     },
            //     child: Icon(Icons.person),
            //     // child: CircleAvatar(
            //     //   backgroundImage: AssetImage("avatar5.png"),
            //     //   backgroundColor: Colors.orange,
            //     // ),
            //   ),
            // ),
           
            backgroundColor: Colors.white54
            //centerTitle: true,
            ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 0),
        child: ListView(
          //childAspectRatio: MediaQuery.of(context).size.height / 1000,
          //crossAxisCount: 2,
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
    );
  }


}
