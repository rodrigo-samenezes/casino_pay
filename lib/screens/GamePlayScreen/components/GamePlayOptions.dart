import 'package:flutter/material.dart';


class GamePlayOptions extends StatelessWidget {
  const GamePlayOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GamePlayOptionsButton(
                iconData: Icons.casino,
                label: "Jogar Dados",
                onTap: (){},
              ),
              GamePlayOptionsButton(
                iconData: Icons.style,
                label: "Jogar 21",
                onTap: (){},
              )
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GamePlayOptionsButton(
                iconData: Icons.edit,
                label: "Ajuste Manual",
                onTap: (){},
              ),
              GamePlayOptionsButton(
                iconData: Icons.done,
                label: "Fechar conta",
                onTap: (){},
              )
            ]
          )
        ],
      ),
    );
  }
}

class GamePlayOptionsButton extends StatelessWidget {
  final IconData iconData;
  final String label;
  final void Function() onTap;

  const GamePlayOptionsButton({
    required this.iconData,
    required this.label,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: this.onTap,
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(iconData, size: 80, color: Colors.green,),
                Divider(color: Colors.green,),
                Text(label, style: TextStyle(fontSize: 20, color: Colors.green),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}