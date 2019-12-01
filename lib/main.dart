import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      BallPage(),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.grey[700],
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  answer = Random().nextInt(5) + 1;
                  print('ball is tapped! ball is: $answer');
                });
              },
              child: Image.asset('images/ball$answer.png'),
            ),
          ),
        ],
      ),
    );
  }
}
