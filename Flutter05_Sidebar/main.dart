import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
          primarySwatch: Colors.red
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
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){
              print('Shopping button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/Hurt2.png'),
            ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/Hurt.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/Hurt.png'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: Text('LEE Kyungjae') ,
              accountEmail: Text('is0385hp@ed.ritsumei.ac.jp'),
                onDetailsPressed: (){
                print('arrow is clicked');
            },
              decoration: BoxDecoration(
              color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                  bottomLeft:Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: (){
                print('settings is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
