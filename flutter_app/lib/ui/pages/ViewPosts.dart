import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:pet_care/ui/widgets/CustomDrawer.dart';
import 'package:pet_care/ui/widgets/PetCard.dart';
import 'package:pet_care/ui/widgets/PetServiceOptions.dart';
import 'package:pet_care/ui/widgets/Reviews.dart';
import 'package:pet_care/ui/widgets/Splitter.dart';
import 'package:pet_care/ui/widgets/UserProfilePets.dart';

class ViewPosts extends StatefulWidget {
  @override
  _ViewPostsState createState() => _ViewPostsState();
}

class _ViewPostsState extends State<ViewPosts> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          drawer: CustomDrawer(),

          // This is the number of tabs.
          body: Stack(
            children: <Widget>[
              NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  // These are the slivers that show up in the "outer" scroll view.
                  return <Widget>[
                    Container(child: FlexibleSpaceBar()),

                    // SliverAppBar(
                    //   leading: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: GestureDetector(
                    //       onTap: () {
                    //         Scaffold.of(context).openDrawer();
                    //       },
                    //       child: CircleAvatar(
                    //         backgroundImage: AssetImage("avatar5.png"),
                    //         backgroundColor: Colors.orange,
                    //       ),
                    //     ),
                    //   ),
                    //   actions: <Widget>[
                    //     IconButton(
                    //       //padding: EdgeInsets.only(right: 30.0),
                    //       onPressed: () => print('Search'),
                    //       icon: Icon(Icons.settings),
                    //       iconSize: 30.0,
                    //       color: Colors.blueGrey,
                    //     ),
                    //   ],
                    //   backgroundColor: Colors.white,
                    //   floating: true,
                    //   pinned: true,
                    //   centerTitle: true,
                    //   title: SizedBox(
                    //     width: 5550,
                    //     height: 40,
                    //     child: Card(
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(15.0),
                    //       ),
                    //       color: Colors.deepOrangeAccent,
                    //       child: Center(
                    //         child: Text(
                    //           "rent a cat",
                    //           style: TextStyle(color: Colors.white),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    //   expandedHeight: 230.0,
                    //   flexibleSpace: Align(
                    //     alignment: Alignment.bottomCenter,
                    //     child: Container(
                    //       //color: Colors.white,
                    //       child: FlexibleSpaceBar(
                    //         collapseMode: CollapseMode.pin,
                    //         centerTitle: true,
                    //         background: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: <Widget>[
                    //             SizedBox(height: 85),
                    //             Padding(
                    //               padding: const EdgeInsets.only(left: 10),
                    //               child: PetServiceOptions(),
                    //             ),
                    //             SizedBox(height: 12),
                    //             Padding(
                    //               padding: const EdgeInsets.only(left: 10),
                    //               child: Row(
                    //                 children: <Widget>[
                    //                   Icon(
                    //                     Icons.explore,
                    //                     color: Colors.redAccent,
                    //                   ),
                    //                   SizedBox(width: 5),
                    //                   Text(
                    //                     "Gülbahçe",
                    //                     style: TextStyle(
                    //                         fontSize: 20,
                    //                         fontWeight: FontWeight.bold),
                    //                   ),
                    //                   SizedBox(
                    //                       width: MediaQuery.of(context)
                    //                               .size
                    //                               .height /
                    //                           11),
                    //                   FlatButton(
                    //                     onPressed: () {},
                    //                     color: Colors.white,
                    //                     child: Text(
                    //                       "Konumunu Değiştir",
                    //                       style: TextStyle(
                    //                           color: Colors.redAccent),
                    //                     ),
                    //                   )
                    //                 ],
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    
                  ];
                },
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
              ),
              Positioned(
                top: MediaQuery.of(context).size.height - 58,
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
          )),
    );
  }
}

// Container(
//             margin:EdgeInsets.all(0),
//             child: Card(
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
//               child: InkWell(
//                 onTap: () => print("ciao"),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
//                   children: <Widget>[
//                     ClipRRect(
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(8.0),
//                         topRight: Radius.circular(8.0),
//                       ),
//                       child: Image.network(
//                           'https://placeimg.com/640/480/any',
//                          // width: 300,
//                           height: 250,
//                           fit:BoxFit.fill

//                       ),
//                     ),
//                     ListTile(
//                       title: Text('Pub 1'),
//                       subtitle: Text('Location 1'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
