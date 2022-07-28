import 'package:flutter/material.dart';
import 'package:flutter19/my_button/my_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign in',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonTheme(
            height: 50.0,
            child: RaisedButton(
              //elevation: 0.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/glogo.png'),
                  Text(
                    '구글계정으로 로그인하기',
                    style: TextStyle(color: Colors.black87, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('images/glogo.png'),
                  )
                ],
              ),
              color: Colors.white,
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          MyButton(
              image: Image.asset('images/glogo.png'),
              text: Text('refact'),
              color: Colors.white,
              radius: 4.0,
              onPressed: (){}
          ),
          SizedBox(height: 20,),
          ButtonTheme(
            height: 50.0,
            child: RaisedButton(
              //elevation: 0.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/flogo.png'),
                  Text(
                    '페이스북으로 로그인하기',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('images/glogo.png'),
                  )
                ],
              ),
              color: Color(0xFF334D92),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ButtonTheme(
            height: 50.0,
            child: RaisedButton(
              //elevation: 0.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  Text(
                    '이메일로 로그인하기',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Icon(Icons.email),
                  )
                ],
              ),
              color: Colors.green,
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
