import 'package:flutter/material.dart';

class onepage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("首页"),
      ),
      body: Center(

        child: RouteButton(),
      ),
    );
  }
}


class RouteButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateTwo(context);
      },
      child: Text('跳转'),
    );
  }
}

_navigateTwo(BuildContext
context) async {
  //async是启用异步方法

  final result = await Navigator.push( //等待
      context,
      MaterialPageRoute(builder:
          (context) =>
          _navigateThree()


      )
  );

  Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
}


class _navigateThree extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(


          title: Text('产品')
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            RaisedButton(

              child: Text('1212121'),
              onPressed: () {
                Navigator.pop(context, '大:1511008888');
              },

            ),
            RaisedButton(

              child: Text('21212121'),
              onPressed: () {
                Navigator.pop(context, '小:1511008888');
              },

            )

          ],

        ),

      ),


    );
  }
}