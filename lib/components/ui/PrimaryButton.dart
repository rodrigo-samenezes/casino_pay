import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? label;

  PrimaryButton({Key? key, this.onPressed, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed ?? () {},
        child: Text(label ?? "", style: TextStyle(fontSize: 20),),
        style: ElevatedButton.styleFrom(
          fixedSize: Size.fromHeight(56),
          primary: Colors.green
        ),
      );
  }
}
