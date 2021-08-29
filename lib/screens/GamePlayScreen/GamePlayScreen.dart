import 'package:cassino_pay/components/PageBase.dart';
import 'package:cassino_pay/components/ui/BillTable.dart';
import 'package:cassino_pay/models/Bill.dart';
import 'package:cassino_pay/models/Person.dart';
import 'package:cassino_pay/screens/GamePlayScreen/components/GamePlayScreenText.dart';
import 'package:flutter/material.dart';

import 'components/GamePlayOptions.dart';

class GamePlayScreen extends StatefulWidget {
  const GamePlayScreen({ Key? key }) : super(key: key);

  @override
  _GamePlayScreenState createState() => _GamePlayScreenState();
}

class _GamePlayScreenState extends State<GamePlayScreen> {
  late Bill bill;

  _GamePlayScreenState(): super() {
    this.bill = Bill(
      localName: "Bar do Nelson",
      createdAt: DateTime(2021, 08, 10),
      people: [
        Person(name: 'Rodrigo', coins: 250),
        Person(name: 'Whadson', coins: 325),
        Person(name: 'Rodrigo', coins: 585),
        Person(name: 'Rodrigo', coins: 872),
      ],
      total: 127.85
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageBase(
      title: this.bill.localName,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24,),
        GamePlayScreenText("Valor: R\$ ${bill.total.toStringAsFixed(2)}"),
        GamePlayScreenText("Qtd. de Pessoas: ${this.bill.people.length}"),
        SizedBox(height: 24,),
        BillTable(bill: bill),
        SizedBox(height: 24,),
        GamePlayOptions()
      ],
    );
  }
}

