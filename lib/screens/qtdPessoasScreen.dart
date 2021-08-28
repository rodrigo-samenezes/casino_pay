import 'package:cassino_pay/components/ui/Editor.dart';
import 'package:flutter/material.dart';

class QtdPessoasScreen extends StatelessWidget {
  final TextEditingController _qtdPessoas = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Quantidade de Pessoas'),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Enabled'),
                ),
              ),
              Expanded(
                child: Editor(_qtdPessoas),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Enabled'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
