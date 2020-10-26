import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.deepPurple.shade400,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  MagicBallGame createState() => MagicBallGame();
}

class MagicBallGame extends State<StatefulWidget> {
  int balls = 2;
  void onPressBall(){
    setState(() {
      balls = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
          child: Column(
            children:<Widget> [
              Expanded(
                child: FlatButton(
                 onPressed: onPressBall,
                  child: Image.asset('images/ball$balls.png')),
              ),
            ],
          ),
        );
  }
}
