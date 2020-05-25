import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pet_care/ui/widgets/PetCard.dart';
import 'package:pet_care/ui/widgets/Reviews.dart';
import 'package:pet_care/ui/widgets/UserProfilePets.dart';
import 'package:pet_care/ui/widgets/UserProfilePets2.dart';

class UserProfile2 extends StatefulWidget {
  @override
  _UserProfile2State createState() => _UserProfile2State();
}

class _UserProfile2State extends State<UserProfile2> {
  List<String> _tabs = ["Pets", "Reviews"];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: DefaultTabController(
          length: _tabs.length, // This is the number of tabs.
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              // These are the slivers that show up in the "outer" scroll view.
              return <Widget>[
                SliverOverlapAbsorber(
                  // This widget takes the overlapping behavior of the SliverAppBar,
                  // and redirects it to the SliverOverlapInjector below. If it is
                  // missing, then it is possible for the nested "inner" scroll view
                  // below to end up under the SliverAppBar even when the inner
                  // scroll view thinks it has not been scrolled.
                  // This is not necessary if the "headerSliverBuilder" only builds
                  // widgets that do not overlap the next sliver.
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  child: SliverSafeArea(
                    top: false,
                    sliver: SliverAppBar(
                      centerTitle: true,
                      leading: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                      ),
                      title: const AutoSizeText(
                        'Rent a Cat',
                        style: TextStyle(fontSize: 18),
                        minFontSize: 6,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      backgroundColor: Colors.redAccent,
                      expandedHeight: 200.0,
                      floating: true,
                      pinned: true,
                      snap: false,
                      primary: true,
                      forceElevated: innerBoxIsScrolled,
                      bottom: TabBar(
                        // These are the widgets to put in each tab in the tab bar.
                        tabs: _tabs
                            .map((String name) => Tab(text: name))
                            .toList(),
                      ),
                      flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
                          // title: Text("Rent a Cat",
                          //     style: TextStyle(
                          //       color: Colors.white,
                          //       fontSize: 16.0,
                          //     )
                          // ),
                          background: Image.network(
                            "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
                // These are the contents of the tab views, below the tabs.
                //physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      SafeArea(
                        top: false,
                        bottom: false,
                        child: Builder(
                          builder: (BuildContext context) {
                            return CustomScrollView(
                              key: PageStorageKey<String>(_tabs[0]),
                              slivers: <Widget>[
                                SliverOverlapInjector(
                                  // This is the flip side of the SliverOverlapAbsorber above.
                                  handle: NestedScrollView
                                      .sliverOverlapAbsorberHandleFor(context),
                                ),
                                SliverPadding(
                                  padding: const EdgeInsets.all(8.0),
                                  sliver: SliverList(
                                    delegate: SliverChildListDelegate([
                                      UserProfilePets2(),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0,right: 100),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
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
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      
                    ],
                  ),
                  SafeArea(
                    top: false,
                    bottom: false,
                    child: Builder(
                      // This Builder is needed to provide a BuildContext that is "inside"
                      // the NestedScrollView, so that sliverOverlapAbsorberHandleFor() can
                      // find the NestedScrollView.
                      builder: (BuildContext context) {
                        return CustomScrollView(
                          // The "controller" and "primary" members should be left
                          // unset, so that the NestedScrollView can control this
                          // inner scroll view.
                          // If the "controller" property is set, then this scroll
                          // view will not be associated with the NestedScrollView.
                          // The PageStorageKey should be unique to this ScrollView;
                          // it allows the list to remember its scroll position when
                          // the tab view is not on the screen.
                          key: PageStorageKey<String>(_tabs[1]),
                          slivers: <Widget>[
                            SliverOverlapInjector(
                              // This is the flip side of the SliverOverlapAbsorber above.
                              handle: NestedScrollView
                                  .sliverOverlapAbsorberHandleFor(context),
                            ),
                            SliverPadding(
                              padding: const EdgeInsets.all(8.0),
                              // In this example, the inner scroll view has
                              // fixed-height list items, hence the use of
                              // SliverFixedExtentList. However, one could use any
                              // sliver widget here, e.g. SliverList or SliverGrid.

                              sliver: SliverList(
                                delegate: SliverChildListDelegate([
                                  
                                  Reviews()
                                ]),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  
                ]),
          ),
        ),
      ),
    );
  }
}
