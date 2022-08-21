import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am Vanilla'),
          centerTitle: true,
          backgroundColor: Colors.yellow[600],
          foregroundColor: Colors.grey[800],
        ),
        body: Center(
          child: Image(image: AssetImage('images/vanilla_cone.png')),
        ),
        backgroundColor: Colors.yellow[50],
      ),
    ),
  );
}
