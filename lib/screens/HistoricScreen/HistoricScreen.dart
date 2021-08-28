import 'package:cassino_pay/components/PageBase.dart';
import 'package:cassino_pay/models/Bill.dart';
import 'package:cassino_pay/models/Person.dart';
import 'package:flutter/material.dart';

class HistoricScreen extends StatefulWidget {
  late List<_HistoricItem> items;
  
  HistoricScreen({ Key? key }) : super(key: key) {
    items = [
      _HistoricItem(
        bill: Bill(
          people: [
            Person(name: 'Rodrigo', coins: 250),
            Person(name: 'Whadson', coins: 325),
            Person(name: 'Rodrigo', coins: 585),
            Person(name: 'Rodrigo', coins: 872),
          ],
          total: 127.85
        ),
        isExpanded: false
      ),
      _HistoricItem(
        bill: Bill(
          people: [
            Person(name: 'Rodrigo', coins: 250),
            Person(name: 'Whadson', coins: 325),
            Person(name: 'Rodrigo', coins: 585),
            Person(name: 'Rodrigo', coins: 872),
          ],
          total: 127.85
        ),
        isExpanded: false
      ),
      _HistoricItem(
        bill: Bill(
          people: [
            Person(name: 'Rodrigo', coins: 250),
            Person(name: 'Whadson', coins: 325),
            Person(name: 'Rodrigo', coins: 585),
            Person(name: 'Rodrigo', coins: 872),
          ],
          total: 127.85
        ),
        isExpanded: false
      )
    ];
  }

  @override
  _HistoricScreenState createState() => _HistoricScreenState();
}

class _HistoricScreenState extends State<HistoricScreen> {
  @override
  Widget build(BuildContext context) {
    return PageBase(
      showBackButton: true,
      title: 'Histórico',
      children: [
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              
            });
          },
          children: [
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(title: Text("Teste"));
              },
              body: Placeholder(fallbackHeight: 100,),
              isExpanded: false
            )
          ],
        )
      ],
    );
  }
}

class _HistoricItem {
  Bill bill;
  bool isExpanded;

  _HistoricItem({
    required this.bill,
    this.isExpanded = false    
  });
}