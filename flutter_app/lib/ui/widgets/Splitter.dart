import 'package:flutter/material.dart';

class Splitter extends StatelessWidget {
  final String text;

  const Splitter(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
          child: Divider(
        color: Colors.grey,
      )),
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Text(
          text,
          
        ),
      ),
      Expanded(
          child: Divider(
        color: Colors.grey,
      )),
    ]);
  }
}
