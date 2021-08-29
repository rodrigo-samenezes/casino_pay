
import 'package:cassino_pay/screens/HistoricScreen/HistoricScreen.dart';
import 'package:cassino_pay/screens/HomeScreen/HomeScreen.dart';
import 'package:cassino_pay/screens/qtdPessoasScreen.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const HomeScreen(),
  '/historic': (context) => HistoricScreen(),
  '/qtd_de_pessoas': (context) => QtdPessoasScreen()
};