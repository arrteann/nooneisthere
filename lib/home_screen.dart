import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: WebviewScaffold(
        url: 'http://nooneisthere.ir',
        withJavascript: true,
        
      )
    );
  }
}