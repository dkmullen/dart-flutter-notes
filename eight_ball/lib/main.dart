import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        home: EightBallPage(),
      ),
    );

class EightBallPage extends StatelessWidget {
  const EightBallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Center(child: Text('Magic Eight Ball')),
      ),
      body: EightBall(),
    );
  }
}

class EightBall extends StatefulWidget {
  const EightBall({Key? key}) : super(key: key);

  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int randNumber = 1;
  void setRandNumber() {
    randNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    setRandNumber();
    return Center(
        child: Row(
      children: [
        Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    setRandNumber();
                  });
                },
                child: Image.asset('images/ball$randNumber.png')))
      ],
    ));
  }
}
