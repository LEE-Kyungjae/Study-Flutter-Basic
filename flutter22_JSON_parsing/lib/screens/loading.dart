import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
    fetchData();
  }

  void getLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      print(position);
    } catch (e) {
      print('There was a problem with the internet connection');
    }
  }

  void fetchData() async {
    try {
      http.Response response =
          await http.get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?'
              'q=London&appid=b1b15e88fa797225412429c1c50c122a1'));
      if (response.statusCode==200){
        String jsonData=response.body;
        var myJson=jsonDecode(jsonData)['weather'][0]['description'];
        var mywind=jsonDecode(jsonData)['wind']['speed'];
        var myid=jsonDecode(jsonData)['id'];
      print(myJson);
      print(mywind);
      print(myid);
      }
      //print(response.body);
    } catch (e) {
      print('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocation();
          },
          child: Text(
            'location',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}
