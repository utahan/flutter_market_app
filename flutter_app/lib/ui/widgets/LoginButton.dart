import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {

  final String text;

  const LoginButton(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.lightBlueAccent,
      textColor: Colors.white,
      padding: const EdgeInsets.all(8.0),
      child: new Text(
        text,
      ),
      onPressed: () {},
    );
  }
}
