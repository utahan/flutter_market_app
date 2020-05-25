import 'package:flutter/material.dart';
import 'package:pet_care/ui/widgets/EmailTextField.dart';
import 'package:pet_care/ui/widgets/LoginButton.dart';
import 'package:pet_care/ui/widgets/NameSurname.dart';
import 'package:pet_care/ui/widgets/NickName.dart';
import 'package:pet_care/ui/widgets/PasswordTextField.dart';
import 'package:pet_care/ui/widgets/SocialMediaLogin.dart';

import 'package:pet_care/ui/widgets/Splitter.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kaydol"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 300),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                EmailTextField(),
                SizedBox(
                  height: 10,
                ),
                NameSurname(),
                SizedBox(
                  height: 10,
                ),
                NickName(),
                SizedBox(
                  height: 10,
                ),
                PasswordTextField("Şifre"),
                SizedBox(
                  height: 10,
                ),
                PasswordTextField("Şifre tekrar"),
                LoginButton("Kaydol"),
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
                SizedBox(height: 12),
              ],
            ),
          )
        ],
      ),
    );
  }
}
