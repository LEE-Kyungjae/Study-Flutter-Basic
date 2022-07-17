import 'package:flutter/material.dart';
import 'package:flutter12/ScreenA.dart';
import 'package:flutter12/ScreenB.dart';
import 'package:flutter12/ScreenC.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute :'/',
      routes: {
        '/':(context)=>ScreenA(),
        '/b':(context)=>ScreenB(),
        '/c':(context)=>ScreenC()
      },
    );
  }
}