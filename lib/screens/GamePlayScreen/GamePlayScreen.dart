import 'package:cassino_pay/components/PageBase.dart';
import 'package:cassino_pay/components/ui/BillTable.dart';
import 'package:cassino_pay/models/Bill.dart';
import 'package:cassino_pay/models/Person.dart';
import 'package:cassino_pay/screens/GamePlayScreen/components/GamePlayAddOrEditPersonAlert.dart';
import 'package:cassino_pay/screens/GamePlayScreen/components/GamePlayChangeValueAlert.dart';
import 'package:cassino_pay/screens/GamePlayScreen/components/GamePlayScreenText.dart';
import 'package:flutter/material.dart';
import 'components/GamePlayOptions.dart';

class GamePlayScreenNavParams {
  final List<String> peopleNames;
  final String localName;
  GamePlayScreenNavParams({required this.peopleNames, required this.localName });
}

class GamePlayScreen extends StatefulWidget {
  static const String route = "/game_play";

  final List<String> peopleNames;
  final String localName;

  const GamePlayScreen({ Key? key, required this.peopleNames, required this.localName }) : super(key: key);

  @override
  _GamePlayScreenState createState() => _GamePlayScreenState(Bill(
    localName: localName,
    people: peopleNames.map((e) => Person(name: e, coins: 500)).toList(),
    total: 100.00
  ));
}

class _GamePlayScreenState extends State<GamePlayScreen> {
  Bill bill;


  _GamePlayScreenState(this.bill): super();

  void handleOnAddPersonButtonTap(BuildContext _context) {
    showDialog(
      context: _context,
      builder: (context) => GamePlayAddOrEditPersonAlert(
        onSave: (name) {
          bill.addPerson(name);
          setState(() {});
        }
      )
    );
  }

  void handleOnChangeValueButtonTap(BuildContext _context) {
    showDialog(
      context: _context,
      builder: (context) => GamePlayChangeValueAlert(
        currentValue: this.bill.total,
        onSave: (value) {
          setState(() {
            this.bill.total = value;
          });
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageBase(
      title: this.bill.localName,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24,),
        Row(
          children: [
            GamePlayScreenText("Valor: R\$ ${bill.total.toStringAsFixed(2)}"),
            IconButton(onPressed: () => handleOnChangeValueButtonTap(context), icon: Icon(Icons.edit, color: Colors.green,))
          ],
        ),
        GamePlayScreenText("Qtd. de Pessoas: ${this.bill.people.length}"),
        SizedBox(height: 24,),
        BillTable(bill: bill),
        TextButton(onPressed: () => handleOnAddPersonButtonTap(context), child: Text("Adicionar Participante")),
        SizedBox(height: 24,),
        GamePlayOptions()
      ],
    );
  }
}

