import 'package:cassino_pay/components/ui/PrimaryButton.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(aspectRatio: 1, child: Image.asset("assets/home_screen_img.png")),
          SizedBox(height: 100,),
          PrimaryButton(label: "Começar",),
          SizedBox(height: 30,),
          PrimaryButton(label: "Histórico",)
        ],
      ),
    );
  }
}