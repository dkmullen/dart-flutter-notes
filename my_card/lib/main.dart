import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(14, 47, 73, 1.0),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/dm.jpeg'),
              ),
              Text('Dennis Mullen',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                  )),
              Text(
                'Flutter Developer'.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Source Sans Pro',
                  color: Color.fromRGBO(75, 153, 224, 1.0),
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height: 20,
                  width: 100,
                  child: Divider(
                    color: Color.fromRGBO(75, 153, 224, 0.7),
                  )),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                      leading: Icon(Icons.phone,
                          color: Color.fromRGBO(75, 153, 224, 1.0)),
                      title: Text(
                        '+1 (865) 898-3093',
                        style: TextStyle(
                          color: Color.fromRGBO(14, 47, 73, 1.0),
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                        ),
                      ))),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                      leading: Icon(Icons.email_rounded,
                          color: Color.fromRGBO(75, 153, 224, 1.0)),
                      title: Text(
                        'dkmullen@gmail.com',
                        style: TextStyle(
                          color: Color.fromRGBO(14, 47, 73, 1.0),
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                        ),
                      ))),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                      leading: Icon(Icons.code_rounded,
                          color: Color.fromRGBO(75, 153, 224, 1.0)),
                      title: Text(
                        'github.com/dkmullen',
                        style: TextStyle(
                          color: Color.fromRGBO(14, 47, 73, 1.0),
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
