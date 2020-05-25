import 'package:flutter/material.dart';
import 'package:pet_care/gateways/Injections.dart';
import 'package:pet_care/gateways/presenters/viewmodels/ViewLoginModel.dart';
import 'package:pet_care/ui/pages/AddPet.dart';
import 'package:pet_care/ui/pages/Favourites.dart';
import 'package:pet_care/ui/pages/Filters.dart';
import 'package:pet_care/ui/pages/LoginPage.dart';
import 'package:pet_care/ui/pages/SignUp.dart';
import 'package:pet_care/ui/pages/UserProfile2.dart';
import 'package:pet_care/ui/pages/ViewPet.dart';
import 'package:pet_care/ui/pages/ViewPosts2.dart';
import 'package:pet_care/ui/pages/ViewPosts3.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => locator<LoginPage>());
      case '/ViewPosts':
        var data = settings.arguments as ViewLoginModel;
        return MaterialPageRoute(builder: (_) => ViewPosts3());
      case '/SignUp':
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/UserProfile':
        return MaterialPageRoute(builder: (_) => UserProfile2());
      case '/ViewPet':
        return MaterialPageRoute(builder: (_) => ViewPet());
      case '/Filters':
        return MaterialPageRoute(builder: (_) => Filters());
      case '/Favourites':
        return MaterialPageRoute(builder: (_) => Favourites());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}