import 'package:cassino_pay/models/Bill.dart';
import 'package:flutter/material.dart';

class BillTable extends StatelessWidget {
  final Bill bill;
  const BillTable({Key? key, required this.bill}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> generateHeaders(List<String> headers) {
      return headers.map((header) => Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
        child: Text(header, style: TextStyle(fontWeight: FontWeight.bold))
      )).toList();
    }

    TableRow generateRow(List<String> rowItems) {
      return TableRow(
        children: rowItems.map((rowItem) => Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          child: Text(rowItem)
        )).toList()
      );
    }
    return Table(
      border: TableBorder.symmetric(
        inside: BorderSide(color: Colors.grey)
      ),
      children: [
        TableRow(children: generateHeaders(["Nome", "Fichas", "Cota", "Valor"])),
        ...bill.people
            .asMap()
            .entries
            .map((p) => generateRow([
              "${p.value.name}",
              "${p.value.coins}",
              "${(bill.evaluatePartOfPersonIndex(p.key) * 100).toStringAsFixed(2)}%",
              "R\$ ${(bill.getValueOfPerson(p.key)).toStringAsFixed(2)}"
            ]))
      ],
    );
  }
}
