import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new SplashPageState();
}

class SplashPageState extends State<SplashPage>{
  setTime(){
    var time = Duration(seconds: 4);
    return Timer(time, _navigator);
  }
  _navigator(){
    Navigator.of(context).pushNamed('/');
  }
  @override
  void initState() {
    super.initState();
    setTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0a5751),
      body: new Center(
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                new SizedBox(height: 20,),
                new Text(
                  'کسی آنجا نیست!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}