import 'package:cassino_pay/screens/NightOutRegisterScreen/NightOutRegisterScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Person {
  final String name;
  final int coins;

  Person({required this.name, this.coins = 500});

  @override
  String toString() {
    return 'Person{name: $name, coins: $coins}';
  }
}

class PersonItem extends StatelessWidget {
  final Person person;

  const PersonItem({required this.person});

  @override
  Widget build(BuildContext context) => Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(person.name),
          subtitle: Text(person.coins.toString()),
        ),
      );
}

class PersonsListState extends State<PersonsList> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView.builder(
          itemCount: widget.persons.length,
          itemBuilder: (context, indice) {
            final perons = widget.persons[indice];
            return PersonItem(
              person: perons,
            );
          },
        ),
      );
}
