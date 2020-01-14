import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void roll() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      print('Left number is $leftDiceNumber');
      print('Right number is $rightDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              // Adds colour when button is  pressed
              splashColor: Colors.cyanAccent,
              onPressed: () {
                roll();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                // Adds colour when button is  pressed
                splashColor: Colors.greenAccent,
                //color: Colors.orange[200],
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onPressed: () {
                  roll();
                }),
          )
        ],
      ),
    );
  }
}
