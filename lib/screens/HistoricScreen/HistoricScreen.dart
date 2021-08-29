import 'package:cassino_pay/components/PageBase.dart';
import 'package:cassino_pay/models/Bill.dart';
import 'package:cassino_pay/models/Person.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final dateFormatter = DateFormat('dd/MM/yyyy');

class HistoricScreen extends StatefulWidget {
  List<_HistoricItem> _items = [];
  
  HistoricScreen({ Key? key }) : super(key: key) {
    _items = [
      _HistoricItem(
        bill: Bill(
          localName: "Bar do Nelson",
          createdAt: DateTime(2021, 08, 10),
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
          localName: "Restaurante Praia Azul",
          createdAt: DateTime(2021, 7, 10),
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
          localName: "MegaBurger",
          createdAt: DateTime(2021, 7, 5),
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
              print("$index, $isExpanded");
              this.widget._items[index].isExpanded = !isExpanded;
            });
          },
          children: this.widget._items.map((e) => ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(title: Text("${e.bill.createdAt != null ? dateFormatter.format(e.bill.createdAt!) : ""}: ${e.bill.localName}"));
              },
              body: Column(
                children: [
                  Text("Valor Total: R\$ ${e.bill.total.toStringAsFixed(2)}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(height: 18,),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Table(
                      children: [
                        TableRow(
                          children: [
                            Container(
                              child: Text("Nome", style: TextStyle(fontWeight: FontWeight.bold))
                            ),
                            Container(
                              child: Text("Fichas", style: TextStyle(fontWeight: FontWeight.bold))
                            ),
                            Container(
                              child: Text("Cota", style: TextStyle(fontWeight: FontWeight.bold))
                            ),
                            Container(
                              child: Text("Valor", style: TextStyle(fontWeight: FontWeight.bold))
                            )
                          ]
                        ),
                        ...e.bill.people.asMap().entries.map((p) => TableRow(
                        children: [
                          Container(
                            child: Text("${p.value.name}")
                          ),
                          Container(
                            child: Text("${p.value.coins}")
                          ),
                          Container(
                            child: Text("${(e.bill.evaluatePartOfPersonIndex(p.key)*100).toStringAsFixed(2)}%")
                          ),
                          Container(
                            child: Text("R\$ ${(e.bill.getValueOfPerson(p.key)).toStringAsFixed(2)}")
                          )
                        ]
                      )).toList()],
                    ),
                  )
                ]
              ),
              isExpanded: e.isExpanded
            )).toList()
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