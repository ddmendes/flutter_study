import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DaviAvatar(),
            NameLabel(),
            RoleLabel(),
            SizedBox(
              height: 20.0,
              width: 130.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            PhoneLabel(),
            EmailLabel(),
          ],
        ),
      ),
    );
  }
}

class DaviAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50.0,
      backgroundImage: AssetImage('images/avatar.jpg'),
    );
  }
}

class NameLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Davi Mendes',
      style: TextStyle(
        fontFamily: 'AlexBrush',
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}

class RoleLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'BACKEND DEVELOPER',
      style: TextStyle(
        fontFamily: 'SourceSansPro',
        fontSize: 20.0,
        color: Colors.teal.shade100,
        letterSpacing: 2.5,
      ),
    );
  }
}

class PhoneLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 10.0,
      ),
      child: ListTile(
        leading: Icon(
          Icons.phone,
          color: Colors.teal,
        ),
        title: Text(
          '+55 19 98324 9323',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            color: Colors.teal.shade900,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}

class EmailLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 10.0,
      ),
      child: ListTile(
        leading: Icon(
          Icons.mail,
          color: Colors.teal,
        ),
        title: Text(
          'ddioriomendes@gmail.com',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            color: Colors.teal.shade900,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
