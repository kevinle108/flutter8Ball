import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),

    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
          child: Text(
              'Enter your question below and hit submit.',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: TextField(
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
              onPressed: () {
                print('you pressed submit');
                setState(() {
                  ballNumber = Random().nextInt(5);
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow)
              )
              ,
              child: Text(
                  'Submit',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0
                ),
              )
          ),
        ),
        Center(
            child: Image.asset('images/ball${ballNumber+1}.png')
        ),
      ],
    );
  }
}
