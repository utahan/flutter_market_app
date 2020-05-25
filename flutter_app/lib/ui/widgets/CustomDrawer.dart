import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("Utku"),
                  accountEmail: Text("utku@utku.com"),
                  currentAccountPicture: Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("cat2.jpeg")))),
                ),
                ListTileTheme(
                  style: ListTileStyle.drawer,
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.account_circle),
                        SizedBox(width: 18,),
                        Text('Profilim'),
                      ],
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ),
                ListTileTheme(
                  style: ListTileStyle.drawer,
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.work),
                        SizedBox(width: 18,),
                        Text('İlanlarım'),
                      ],
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ),
                ListTileTheme(
                  style: ListTileStyle.drawer,
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.star),
                        SizedBox(width: 18,),
                        Text('Favoriler'),
                      ],
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ),
                ListTileTheme(
                  style: ListTileStyle.drawer,
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.people),
                        SizedBox(width: 18,),
                        Text('Bakıcılarım'),
                      ],
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ),
                ListTileTheme(
                  style: ListTileStyle.drawer,
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.message),
                        SizedBox(width: 18,),
                        Text('Mesajlarım'),
                      ],
                    ),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          );
  }
}