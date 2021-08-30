import 'package:cassino_pay/models/Person.dart';
import 'package:flutter/material.dart';

class GamePlayAddOrEditPersonAlert extends StatefulWidget {
  final void Function(String name)? onSave;
  
  GamePlayAddOrEditPersonAlert({Key? key, this.onSave}) : super(key: key);

  @override
  _GamePlayAddOrEditPersonAlertState createState() =>
      _GamePlayAddOrEditPersonAlertState(onSave: this.onSave);
}

class _GamePlayAddOrEditPersonAlertState extends State<GamePlayAddOrEditPersonAlert> {
  void Function(String name)? onSave;
  final TextEditingController _newPersonController = TextEditingController();
  bool canSave = false;

  _GamePlayAddOrEditPersonAlertState({this.onSave}): super();

  @override
  void initState() {
    super.initState();
    _newPersonController.addListener(() {
      setState(() {
        canSave = _newPersonController.text.length != 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Novo Participante'),
      content: TextField(
        controller: _newPersonController,
        decoration: InputDecoration(labelText: "Nome"),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancelar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: const Text('Adicionar'),
          onPressed: canSave ? () {
            if (this.onSave != null) {
              this.onSave!(_newPersonController.text);
            }
            Navigator.of(context).pop();
          } : null,
        ),
      ],
    );
  }
}
