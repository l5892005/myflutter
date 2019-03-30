import 'package:flutter/material.dart';
import 'package:myflutter/ui/IndexPage.dart';

class MainRoutApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainRoutAppState();
  }
}

class MainRoutAppState extends State<MainRoutApp> {
  var _pageCtr;
  int _tabIndex = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageCtr.dispose;
  }

  @override
  void initState() {
    // TODO: implement initState
    _pageCtr = PageController(initialPage: 0, keepPage: true);
  }

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
            IndexPage(),
            IndexPage(),
            IndexPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _tabIndex,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.blue,
            onTap: (index) => _press(index),
            items: [
              BottomNavigationBarItem(
                  title: Text("首页"), icon: Icon(Icons.home)),
              BottomNavigationBarItem(title: Text("咨询"), icon: Icon(Icons.map)),
              BottomNavigationBarItem(
                  title: Text("我的"), icon: Icon(Icons.verified_user)),
            ]),
      ),
    );
  }

  _press(int index) {
    setState(() {
      _tabIndex = index;
      _pageCtr.jumpToPage(index);
    });
  }
}
