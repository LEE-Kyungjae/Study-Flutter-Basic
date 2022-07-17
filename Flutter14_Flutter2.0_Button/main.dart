import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyButtons(),
    );
  }
}
class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      centerTitle: true,
      ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
        onPressed: (){
        print('Text button');
        },
          onLongPress: (){
            print('text button1');
          },
          child: Text('Text button',
          style: TextStyle(fontSize: 20.0),
          ),
        style: TextButton.styleFrom(
          primary: Colors.redAccent,
          //backgroundColor: Colors.blue
        ),
      ),
      ElevatedButton(onPressed: (){
        print('Elevated button');
      },
          child:Text('Elevated button'),
        style: ElevatedButton.styleFrom(
            primary: Colors.orangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
           elevation: 0.0
        ),
      ),
      OutlinedButton(onPressed: (){},
          child: Text('Outline button'),
        style: OutlinedButton.styleFrom(primary: Colors.green,
        side: BorderSide(color: Colors.black87,width: 2.0)
        ),
      ),
    TextButton.icon(
        onPressed: (){
          print('icon button');
        },
        icon: Icon(
            Icons.home,size: 30.0,color: Colors.black87,
        ),
        label: Text('Go to home'),
      style: TextButton.styleFrom(
        primary: Colors.purple
      ),
    ),


      ElevatedButton.icon(onPressed: (){
        print('Elevated button');
      },
        icon: Icon(
          Icons.home,
          size: 20,
        ),
        label: Text('Go to home'),

        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: Size(200,50),
            elevation: 0.0
        ),
      ),
      OutlinedButton.icon(
          onPressed: null,
          icon: Icon(Icons.home),
          label: Text('Go to home'),
          style: OutlinedButton.styleFrom(
            primary: Colors.blue,
            onSurface: Colors.pink
          ),
      ),
      ButtonBar(
        alignment: MainAxisAlignment.center,
        buttonPadding: EdgeInsets.all(20),
        children: [
          TextButton(
              onPressed:null,
              child: Text('Cancle'),
          ),
          ElevatedButton(
              onPressed: null,
              child: Text('Cancle')
          )
        ],
      )
    ],
  ),
  
),
    );
  }
}
