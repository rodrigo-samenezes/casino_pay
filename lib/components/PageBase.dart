import 'package:flutter/material.dart';

class PageBase extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final String? title;
  final bool showBackButton;

  const PageBase({
    Key? key,
    this.children = const <Widget>[],
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.title,
    this.showBackButton = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            (this.showBackButton || this.title != null) ? Row(
              children: [
                this.showBackButton ? Row(children: [
                  IconButton(onPressed: (){Navigator.maybePop(context);}, icon: Icon(Icons.arrow_back)),
                  SizedBox(width: 24,),
                ],) : Container(),
                Text(this.title ?? "", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
              ],
            ) : Container(),
            Column(
              mainAxisAlignment: this.mainAxisAlignment,
              crossAxisAlignment: this.crossAxisAlignment,
              children: this.children
            ),
          ],
        )
      ),
    );
  }
}