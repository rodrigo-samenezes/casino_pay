import 'package:cassino_pay/components/PageBase.dart';
import 'package:cassino_pay/components/ui/Editor.dart';
import 'package:cassino_pay/components/ui/PrimaryButton.dart';
import 'package:flutter/material.dart';

class NightOutRegisterScreen extends StatelessWidget {
  final int peopleNumber = 2;
  final TextEditingController _night_out_description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PageBase(showBackButton: true, children: [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Me conta do teu rolê!',
              style: TextStyle(fontSize: 32.0),
            ),
            Editor(_night_out_description, 'Descrição do Rolê',
                TextInputType.name),
            Container(
              height: 50,
            ),
            Text(
              'Quantidade de Pessoas',
              style: TextStyle(fontSize: 28.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.remove),
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(),
                      child: Center(
                        child: Text(
                          peopleNumber.toString(),
                          style: TextStyle(fontSize: 28.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
            ),
            Center(
              child: PrimaryButton(
                label: "Bora lá!",
                onPressed: () {
                  Navigator.pushNamed(context, '/game_play'); //total_valor
                },
              ),
            )
          ],
        ),
      )
    ]);
  }
}
