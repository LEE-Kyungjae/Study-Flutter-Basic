import 'package:flutter/material.dart';
import 'package:flutter19/login_app/login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login app',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: LogIn(),
    );
  }
}
