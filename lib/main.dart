import 'package:flutter/material.dart';
import 'package:nooneisthere/splash_screen.dart';

import 'home_screen.dart';

main() => runApp(
  new myApp()
);


class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'کسی انجا نیست',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/': (context)=>new Directionality(textDirection: TextDirection.rtl,child: new HomePage(),),
        '/splash':(context)=>new Directionality(textDirection: TextDirection.rtl,child :new SplashPage(),)
      },
      theme: ThemeData(
        fontFamily: 'Vazir'
      ),
    );
  }
}

