import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Dice());
}


class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Center(child: const Text(
            "Dice",
            style: TextStyle(
              color: Colors.brown,
            ),
          )),
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png')),
              ),
              Expanded(child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'))),
            ],
          ),
        ),
      ),
    );
  }
}
