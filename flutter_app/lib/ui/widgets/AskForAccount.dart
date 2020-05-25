import 'package:flutter/material.dart';
import 'package:pet_care/gateways/Injections.dart';

import '../../NavigationService.dart';

class AskForAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50),
      child: Row(
        children: <Widget>[
          Text("Hesabın yok mu?"),
          FlatButton(
            onPressed: () {locator<NavigationService>().navigateTo('/SignUp');},
            child:
                Text("Kaydol", style: TextStyle(color: Colors.lightBlueAccent)),
          )
        ],
      ),
    );
  }
}
