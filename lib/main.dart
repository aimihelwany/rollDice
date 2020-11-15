import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[100],
        appBar: AppBar(
          title: Text('Rolling Dice',
          style:TextStyle(fontFamily: 'Lato'),
          ),
          backgroundColor: Colors.pink[900],
        ),
        body: HomeDice(),
      )
    );
  }
}

class HomeDice extends StatefulWidget {
  @override
  _HomeDiceState createState() => _HomeDiceState();
}

class _HomeDiceState extends State<HomeDice> {
  int leftDice = 1;
  int rightDice = 1;

  int generateRandom() {
    return Random().nextInt(6) + 1;
  }

  void setRandomDice() {
    setState(() {
      leftDice = generateRandom();
      rightDice = generateRandom();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/dicelogo.png',
              width: 300,
              fit: BoxFit.fitWidth,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
              Image.asset('assets/dice$leftDice.png',
                width: 100,
                height: 180,
              ),
              Image.asset('assets/dice$rightDice.png',
                width: 100,
                height: 180,
              ),
              ],
            ),
            Column(
              children:[
                FlatButton(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.pink[900],
                  onPressed: setRandomDice,
                  child: Text('ROLL!',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}






