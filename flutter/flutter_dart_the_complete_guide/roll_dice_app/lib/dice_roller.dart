import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var roll = 2;

  void rollDice() {
    setState(() {
      roll = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$roll.png', width: 200),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
