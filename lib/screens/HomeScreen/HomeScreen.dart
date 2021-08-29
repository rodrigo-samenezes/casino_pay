import 'package:cassino_pay/components/PageBase.dart';
import 'package:cassino_pay/components/ui/PrimaryButton.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageBase(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(aspectRatio: 1, child: Image.asset("assets/home_screen_img.png")),
          SizedBox(height: 100,),
          PrimaryButton(label: "Começar", onPressed: (){Navigator.pushNamed(context, '/qtd_de_pessoas');}),
          SizedBox(height: 30,),
          PrimaryButton(label: "Histórico", onPressed: (){Navigator.pushNamed(context, '/historic');},)
        ],
    );
  }
}