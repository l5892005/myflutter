
import 'package:flutter/material.dart';

class MainRoutApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainRoutAppState();
  }
}

class MainRoutAppState extends State<MainRoutApp> {
  var _pageCtr;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "张佩",
      home: new Scaffold(
        body: PageView(
          controller: _pageCtr,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[


          ],
        )
      ),
    );
  }

}