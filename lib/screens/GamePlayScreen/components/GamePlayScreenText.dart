import 'package:flutter/material.dart';

class GamePlayScreenText extends StatelessWidget {
  final String text;
  const GamePlayScreenText(this.text, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),);
  }
}