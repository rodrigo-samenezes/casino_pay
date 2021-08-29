import 'dart:js';

import 'package:cassino_pay/screens/GamePlayScreen/GamePlayScreen.dart';
import 'package:cassino_pay/screens/HistoricScreen/HistoricScreen.dart';
import 'package:cassino_pay/screens/HomeScreen/HomeScreen.dart';
import 'package:cassino_pay/screens/NightOutRegisterScreen/NightOutRegisterScreen.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const HomeScreen(),
  '/historic': (context) => HistoricScreen(),
  '/night_out_register': (context) => NightOutRegisterScreen(),
  '/game_play': (context) => GamePlayScreen()
  //'/total_valor' : (context) => TotalValorScreen(),
  //'/game_page': (context) => GamePageScreen()
};
