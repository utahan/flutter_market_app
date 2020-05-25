import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:pet_care/gateways/Injections.dart';
import 'package:pet_care/gateways/controllers/LoginPageController.dart';
import 'package:pet_care/gateways/presenters/LoginPresenter.dart';
import 'package:pet_care/gateways/presenters/interfaces/IPresentLogin.dart';
import 'package:pet_care/gateways/presenters/interfaces/IUiViewPosts.dart';
import 'package:pet_care/gateways/presenters/viewmodels/ViewLoginModel.dart';
import 'package:pet_care/ui/widgets/AskForAccount.dart';

import 'package:pet_care/ui/widgets/EmailTextField.dart';
import 'package:pet_care/ui/widgets/LoginButton.dart';
import 'package:pet_care/ui/widgets/PasswordTextField.dart';
import 'package:pet_care/ui/widgets/SocialMediaLogin.dart';
import 'package:pet_care/ui/widgets/Splitter.dart';
import 'package:provider/provider.dart';

import '../../NavigationService.dart';



class LoginPage extends StatelessWidget implements IUiLoginPage{
  LoginPageController _controller;
  ViewModel model;
  String emailVal;
  String password;

  @override
  Widget build(BuildContext context) {
    model=Provider.of<ViewModel>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Giriş Yap")),
      body: ListView(children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 35, right: 35, top: 300),
          child: Column(
            children: <Widget>[
              Container(
                height: 45,
                width: 240,
                child: TextField(
                  onChanged: (val) {
                    emailVal = val;
                    //print(emailVal);
                  },
                  textInputAction: TextInputAction.done,
                  //autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "E-posta adresi",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 65,
                width: 240,
                child: TextField(
                  onChanged: (val) {
                    password = val;
                    print(password);
                  },
                  autofocus: false,
                  maxLength: 16,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      labelText: "Şifre", border: OutlineInputBorder()),
                ),
              ),
              RaisedButton(
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "Giriş Yap",
                ),
                onPressed: () {
                  _controller=LoginPageController(emailVal,password);
                  _controller.startController();
                  print(this.model.model.flag);


                },
              ),

              SizedBox(
                height: 70,
              ),
              Splitter("YA DA"),
              SizedBox(
                height: 20,
              ),
              Text("Sosyal Medya ile Giriş Yap"),
              SizedBox(height: 7),
              SocialMediaLogin(),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Şifreni mi unuttun?",
                  style: TextStyle(color: Colors.lightBlueAccent),
                ),
              ),
              AskForAccount()
            ],
          ),
        ),
      ]),
    );
  }

  @override
  void getViewModel(ViewLoginModel viewModel) {
    //locator<NavigationService>().navigateToWithArgument('/ViewPosts',viewModel);
    print(this.model.model.flag.toString());
    this.model.setModel(viewModel);
    if(model.model.flag)
      locator<NavigationService>().navigateTo('/ViewPosts');

  }
}

class ViewModel with ChangeNotifier{
  ViewLoginModel model;

  ViewModel(this.model);

  void setModel(ViewLoginModel model){
    this.model=model;
    notifyListeners();
  }

}
