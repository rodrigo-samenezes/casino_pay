import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController _controller;
  final String _label;
  final TextInputType _keyboard;

  Editor(this._controller, this._label, this._keyboard);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controller,
        style: TextStyle(fontSize: 16.0),
        decoration: InputDecoration(
          hintText: _label,
        ),
        keyboardType: _keyboard,
      ),
    );
  }
}
