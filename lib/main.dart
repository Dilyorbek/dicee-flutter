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
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var left = 1;
    return Center(
      child: Row(
        children: [DiceWidget(), DiceWidget()],
      ),
    );
  }
}

class DiceWidget extends StatefulWidget {
  @override
  _DiceWidgetState createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  var count = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        child: Image.asset("images/dice$count.png"),
        onPressed: () {
          setState(() {
            count = Random().nextInt(6) + 1;
          });
        },
      ),
    );
  }
}
