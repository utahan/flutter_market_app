import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
final String text;

const PasswordTextField(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 240,
      child: TextField(
        autofocus: false,
        maxLength: 16,
        textAlign: TextAlign.center,
        obscureText: true,
        textInputAction: TextInputAction.done,
        decoration:
            InputDecoration(labelText: text,
            border: OutlineInputBorder()
            ),
      ),
    );
  }
}
