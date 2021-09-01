import 'package:cassino_pay/components/PageBase.dart';
import 'package:cassino_pay/components/ui/Editor.dart';
import 'package:cassino_pay/components/ui/PrimaryButton.dart';
import 'package:cassino_pay/models/Person.dart';
import 'package:cassino_pay/screens/GamePlayScreen/GamePlayScreen.dart';
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
              'E quem tava lá?',
              style: TextStyle(fontSize: 24.0),
            ),
            Container(
              height: 80,
            ),
            Center(
              child: PrimaryButton(
                label: "Bora lá!",
                onPressed: () {
                  Navigator.pushNamed(context, GamePlayScreen.route,
                      arguments: GamePlayScreenNavParams(
                          peopleNames: ["João", "Flávio"],
                          localName: 'Bar do Nelson')); //total_value
                },
              ),
            )
          ],
        ),
      )
    ]);
  }
}

class PersonsList extends StatefulWidget {
  final List<Person> persons = List.empty(growable: true);

  @override
  State<StatefulWidget> createState() {
    return PersonsListState();
  }
}
