import 'package:flutter/material.dart';
import 'package:flutterhelloword/ThemeColors.dart';


class register extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    runApp(MyRegister());
  }
}

class MyRegister extends StatefulWidget {


  @override
  State createState() {

    MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          title: Text("ssssss"),
          backgroundColor: ThemeColors.colorRed,
        ),
        body: Scaffold(
          body: ListView(
            children: <Widget>[

              BottomNavigationBar(

                  items: null),
              BottomNavigationBar(items: null),
              BottomNavigationBar(items: null),

            ],

          ),

        ),


      ),
    );




  }
}