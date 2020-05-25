import 'package:flutter/material.dart';

class AddPetTitle extends StatelessWidget {

  final String _title;

  AddPetTitle(this._title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          _title,
          style: TextStyle(
              color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 25),
        ),
      ),
    );
  }
}
