import 'package:flutter/material.dart';
import 'package:pet_care/NavigationService.dart';
import 'package:pet_care/gateways/Injections.dart';
import 'package:pet_care/gateways/presenters/interfaces/IUiViewPosts.dart';
import 'package:pet_care/gateways/presenters/viewmodels/ViewLoginModel.dart';
import 'package:pet_care/ui/Navigation.dart';
import 'package:pet_care/ui/pages/AddComment.dart';
import 'package:pet_care/ui/pages/AddPet.dart';
import 'package:pet_care/ui/pages/Announcements.dart';
import 'package:pet_care/ui/pages/BestCareTakers.dart';
import 'package:pet_care/ui/pages/Favourites.dart';
import 'package:pet_care/ui/pages/Filters.dart';
import 'package:pet_care/ui/pages/LoginPage.dart';
import 'package:pet_care/ui/pages/SignUp.dart';
import 'package:pet_care/ui/pages/UserProfile.dart';
//mport 'package:pet_care/ui/pages/UserProfile.dart';
import 'package:pet_care/ui/pages/UserProfile2.dart';
import 'package:pet_care/ui/pages/ViewPet.dart';
import 'package:pet_care/ui/pages/ViewPosts.dart';
import 'package:pet_care/ui/pages/ViewPosts.dart';
import 'package:pet_care/ui/pages/ViewPosts2.dart';
import 'package:pet_care/ui/pages/ViewPosts3.dart';
import 'package:pet_care/ui/widgets/PetCard.dart';
import 'package:pet_care/ui/widgets/UserProfilePets.dart';
import 'package:pet_care/ui/widgets/UserProfilePets2.dart';
import 'package:provider/provider.dart';


void main(){
  setupLocator();
  runApp(MyApp());

}



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider<ViewModel>(
        builder: (_) => ViewModel(ViewLoginModel(false)),
        child: locator<LoginPage>(),
      )
    ],
    child: MaterialApp(
      title: "My App",
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: Router.generateRoute,
      initialRoute: "/ViewPosts",
    ),
  );

  }

}


