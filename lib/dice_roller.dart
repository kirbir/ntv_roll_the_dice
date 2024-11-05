import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

    var activeDiceImage = 'assets/images/dice-1.png';
    var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
                activeDiceImage = 'assets/images/dice-$currentDiceRoll.png';
    });

  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200),
        TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20),
              elevation: 20,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 25)),
          onPressed: rollDice,
          child: const Text('Roll the dice'),
        )
      ],
    );
  }
}
