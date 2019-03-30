import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myflutter/ui/MainRoutApp.dart';

class MainRout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new StartApp(),
    );
  }



}

class StartApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new StartAppState();
  }
}

class StartAppState extends State<StartApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initStartMain();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("张佩是猪"),
        ),
        body:
            new Center(child: new Image(image: AssetImage("assets/start.png"))),
      ),
    );
  }

  void _initStartMain() {
    Future.delayed(new Duration(seconds: 3), () {
      return "hi world!";
    }).then((data) {
      //导航到新路由
      Navigator.push(context, new MaterialPageRoute(builder: (context) {
        return new MainRoutApp();
      }));
    }, onError: (e) {
      print(e);
    });
  }
}
