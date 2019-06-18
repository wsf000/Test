import 'package:flutter/material.dart';
import 'package:flutterhelloword/pages/listworld.dart';

class threepage extends StatefulWidget {

  //类似淘宝界面

  @override
  State<StatefulWidget> createState() => ThreePages();

}


class ThreePages extends State<threepage> {


 // ignore: missing_function_body
 final List<Widget> tabs = [
    Tab(text: "首页"),
    Tab(text: "食品"),
    Tab(text: "生鲜"),
    Tab(text: "女装"),
    Tab(text: "男装"),
    Tab(text: "童装"),
    Tab(text: "洗护"),
    Tab(text: "美食"),
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: tabs,
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),//不可滑动
          children: <Widget>[
            Center(child: new listworld()),
            Center(child: Text('view2')),
            Center(child: Text('view3')),
          ],
        ),

      ),


    );
  }

}