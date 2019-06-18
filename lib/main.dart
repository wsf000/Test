import 'package:flutter/material.dart';
import 'package:flutterhelloword/login.dart';
import 'package:flutterhelloword/pages/onepage.dart';
import 'package:flutterhelloword/pages/twopage.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => new MyHome();
}

class MyHome extends State<MyApp> {
  

  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
        icon: Image.asset("images/one.png"),
        title: Text("首页")
    ),
    BottomNavigationBarItem(
        icon: Image.asset("images/two.png"),
        title: Text("财富")
    ),
    BottomNavigationBarItem(
        icon: Image.asset("images/three.png"),
        title: Text("我的")
    ),

  ];

  List<Widget> _pages = [
    onepage(),
    twopage(),
    login()

  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: _currentIndex,
          children: _pages,
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _items,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },

        ),


      ),

    );
  }

}