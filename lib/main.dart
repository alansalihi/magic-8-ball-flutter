import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(child: Text('Ask Me Anything')),
            backgroundColor: Colors.indigo,
          ),
          body: magic8Page(),
        ),
      ),
    );

class magic8Page extends StatefulWidget {
  @override
  _magic8PageState createState() => _magic8PageState();
}

class _magic8PageState extends State<magic8Page> {
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
