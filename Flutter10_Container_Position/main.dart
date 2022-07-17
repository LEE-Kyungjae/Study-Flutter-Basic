import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
      backgroundColor: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}
class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
            /* Container(
                width: double.infinity,
                height: 20,
              )*/
          ],
        ),
      )
    );
  }
}

          /*child: Column(
            //<세로축>
            //컨테이너의 정중앙으로 이동
            //mainAxisAlignment: MainAxisAlignment.center,
            //컨테이너 필수공간만큼 세로축영역이 조정된다
            //mainAxisSize: MainAxisSize.min,
            //위에서부터 정렬
            //verticalDirection: VerticalDirection.up,

            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //같은간격으로 세로정렬
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //상중하로 배치
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //<가로축>
            //끝점정렬
            //crossAxisAlignment: CrossAxisAlignment.end,
            //가로로 늘이기
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                height: 30.0,

              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
             *//* Container(
                width: double.infinity,
                height: 20,
              )*//*
            ],
          ),
      )
    );
  }
}*/



/*
class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: Text('Container 1'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text('Container 2'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Text('Container 3'),
                ),
              ],
            ),
          ),
        )
    );
  }
}
*/
