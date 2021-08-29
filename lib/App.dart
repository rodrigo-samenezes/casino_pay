import 'package:cassino_pay/screens/HistoricScreen/HistoricScreen.dart';
import 'package:cassino_pay/screens/HomeScreen/HomeScreen.dart';
import 'package:cassino_pay/screens/qtdPessoasScreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HistoricScreen(),
    );
  }
}
