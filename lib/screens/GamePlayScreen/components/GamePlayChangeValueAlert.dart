import 'package:cassino_pay/helpers/CurrencyInputFormatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class GamePlayChangeValueAlert extends StatefulWidget {
  final void Function(double value)? onSave;
  final double currentValue;
  
  
  GamePlayChangeValueAlert({Key? key, this.onSave, required this.currentValue}) : super(key: key);

  @override
  _GamePlayChangeValueAlertState createState() =>
      _GamePlayChangeValueAlertState(onSave: this.onSave, currentValue: this.currentValue);
}

class _GamePlayChangeValueAlertState extends State<GamePlayChangeValueAlert> {
  final formatter = NumberFormat.simpleCurrency(locale: "pt_Br");
  void Function(double value)? onSave;
  final TextEditingController inputTextController = TextEditingController();
  final double currentValue;

  _GamePlayChangeValueAlertState({this.onSave, required this.currentValue}): super();

  @override
  void initState() {
    super.initState();
    inputTextController.text = "R\$ ${this.currentValue.toStringAsFixed(2).replaceAll(".", ",")}";
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Alterar valor'),
      content: TextField(
        controller: inputTextController,
        decoration: InputDecoration(labelText: "Valor"),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          CurrencyInputFormatter()
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancelar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: const Text('Salvar'),
          onPressed: () {
            if (this.onSave != null) {
              double value = formatter.parse(inputTextController.text) as double;
              this.onSave!(value);
            }
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
