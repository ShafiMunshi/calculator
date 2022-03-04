import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String txt;
  final dynamic tap;
  final dynamic clr;
  // final Function callback;

  const button({Key? key, required this.txt, required this.tap, this.clr,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(20),
      color: clr,
      onPressed: tap,
      child: Text(
        txt,
        style: TextStyle(fontSize: 35),
      ),
      shape: CircleBorder(),
    );
  }
}
