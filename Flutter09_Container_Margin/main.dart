import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: Mypage(),
    );
  }
}

class Mypage extends StatelessWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          //margin: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 10,

          ),
          padding: EdgeInsets.all(40),
          child: Text('Hello'),

        ),
      ),
    );
  }
}

