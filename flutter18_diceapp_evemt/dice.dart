import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftdice = 2;
  int rightdice = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    //flex: 2,
                    child: Image.asset('assets/dice$leftdice.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    //flex: 1,
                      child: Image.asset('assets/dice$rightdice.png')),
                  //   //Image(image: AssetImage('assets/dice1.png'),
                  // width: 300.0,)
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            ButtonTheme(
              minWidth: 100.0,
              height: 60.0,
              child: RaisedButton(
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  color: Colors.orangeAccent,
                  onPressed: () {
                    setState(() {
                      leftdice = Random().nextInt(6) + 1;
                      rightdice = Random().nextInt(6) + 1;
                    });
                    showToast("Left dice: {$leftdice}, Right dice: {$rightdice}");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(msg: message,
      backgroundColor: Colors.blueGrey, toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM
  );
}