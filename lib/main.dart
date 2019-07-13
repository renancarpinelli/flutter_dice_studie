import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceListPage(),
      ),
    ),
  );
}

class DiceListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiceListPageState();
}

class _DiceListPageState extends State<DiceListPage> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          setState(() {});
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DicePage(currentDice: Random().nextInt(6) + 1),
              DicePage(currentDice: Random().nextInt(6) + 1),
              DicePage(currentDice: Random().nextInt(6) + 1),
              DicePage(currentDice: Random().nextInt(6) + 1),
              DicePage(currentDice: Random().nextInt(6) + 1),
            ],
          ),
        ));
  }
}

class DicePage extends StatelessWidget {
  DicePage({Key key, this.currentDice}) : super(key: key);

  final int currentDice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset('images/dice$currentDice.png'),
    );
  }
}
