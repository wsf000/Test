import 'package:flutter/material.dart';
import 'package:flutterhelloword/pages/listworld.dart';
import 'package:flutterhelloword/pages/wealth.dart';
import 'package:flutterhelloword/pages/threepage.dart';


class twopage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TabBarDemoState();
  }
}

class TabBarDemoState extends State<twopage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
//              icon: new Icon(Icons.directions_bike),
//              icon: new Icon(Icons.directions_bike),
//              icon: new Icon(Icons.directions_bike),
            text:"第一"

            ),
            new Tab(
                text:"第二"
            ),
            new Tab(
                text:"第三"
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Center(child: new listworld()),
          new Center(child: new Wealth()),
          new Center(child: new threepage()),
        ],
      ),
    );
  }



}
