import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: const Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            ballNumber = Random().nextInt(5)+1;
          });
        },
        child: Image(
          image: AssetImage('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
