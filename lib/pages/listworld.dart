import 'package:flutter/material.dart';
import 'package:flutterhelloword/model/listdata.dart';


class listworld extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /*appBar: AppBar(
        title: Text("LIST"),
      ),*/
      body: MYlist(),
    );
  }
}

class MYlist extends StatelessWidget {


  List list = new List();

  MYlist() {
    for (var i = 0; i < 20; i++) {
      this.list.add("这是第 $i 个 ");
    }
  }

  /* Widget _getListDart(context,index) {
    return ListTile(
      leading: Image.asset(listData[index]["imageUrl"]),
      subtitle: Text(listData[index]["author"]),
      title: Text(listData[index]["title"]),
    );

  }*/
  Widget _getListDart(context, index) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Column(
        children: <Widget>[
          Image.asset(listData[index]["imageUrl"]),
          Text(listData[index]["title"],
            textAlign: TextAlign.center,

          )


        ],
      ),


    );
  }


  @override
  Widget build(BuildContext context) {
    /*return ListView.builder(
        itemCount: listData.length,
        itemBuilder:this. _getListDart

    );*/

    return GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0

        ),
        itemCount: listData.length,
        itemBuilder: this._getListDart
    );
  }
}