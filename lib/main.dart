import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      title: 'Dicee',
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.grey.shade900,
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
  //store dice face index
  int leftDiceIndex = 1;
  int rightDiceIndex = 1;

  //To perform the action of dice face changing during user tap input.
  void changeLeftDiceFace() {
    setState(() {
      leftDiceIndex = Random().nextInt(6) + 1; // 1 to 6
      print('left pressed');
    });
  }

  void changeRightDiceFace() {
    setState(() {
      rightDiceIndex = Random().nextInt(6) + 1; // 1 to 6
      print('right pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeLeftDiceFace();
              },
              child: Image.asset('images/dice$leftDiceIndex.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeRightDiceFace();
              },
              child: Image.asset('images/dice$rightDiceIndex.png'),
            ),
          ),
        ],
      ),
    );
  }
}
