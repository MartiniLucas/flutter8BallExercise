import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Ask me something'),
          backgroundColor: Colors.blue[800],
        ),
        body: Ball8(),
      ),
    ),
  );
}

class Ball8 extends StatefulWidget {
  @override
  _Ball8State createState() => _Ball8State();
}

class _Ball8State extends State<Ball8> {
  var ballMesaMap = {
    '1': 'YES',
    '2': 'NO',
    '3': 'ASK AGAIN LATER',
    '4': 'THE ANSWER IS YES',
    '5': 'I HAVE NO IDEA'
  };
  var ballMesage = 2;

  void changeMesage() {
    ballMesage = new Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeMesage();
                    });
                  },
                  child: Image(
                    image: AssetImage('images/ball$ballMesage.png'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Text(
                  ballMesaMap['$ballMesage'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.blue[900]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*class DicePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber01 = 1;
  var leftDiceNumber02 = 1;

  void randomNumber() {
    leftDiceNumber01 = new Random().nextInt(6) + 1;
    leftDiceNumber02 = new Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });

                  //print('Botão Esquerdo Foi Clicado');
                },
                child: Image(
                    image: AssetImage('images/dice$leftDiceNumber01.png'))),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });

                  //print('Botão Esquerdo Foi Clicado');
                },
                child: Image(
                    image: AssetImage('images/dice$leftDiceNumber02.png'))),
          ),
        ],
      ),
    );
  }
}*/
