import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Wealth extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => WealthPage();

}


class WealthPage extends State<Wealth> {


  List<Widget> imageList = [
    Image.network(
      "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2726034926,4129010873&fm=26&gp=0.jpg"

      , fit: BoxFit.fill,
    ),
    Image.network(
      "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2726034926,4129010873&fm=26&gp=0.jpg"

      , fit: BoxFit.fill,
    ),
    Image.network(
      "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2726034926,4129010873&fm=26&gp=0.jpg"

      , fit: BoxFit.fill,
    ),


  ];

  List<BottomNavigationBarItem> _list = [
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      //财富页

      body: Column(

        children: <Widget>[
          Container(
            height: 150,
            child: Swiper(
              itemBuilder: _itemBuilder,

              itemCount: 3,

              pagination: SwiperPagination(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                  builder: DotSwiperPaginationBuilder(
                      color: Colors.black54,
                      activeColor: Colors.white
                  )
              ),

              controller: SwiperController(),
              scrollDirection: Axis.horizontal,
              autoplay: true,
            ),


          ),

          Container(

            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Icon(
                        Icons.home,
                        size: 40.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text("首页"),
                    )
                  ],


                ),
                Column(

                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Icon(
                        Icons.home,
                        size: 40.0,
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text("服务"),
                    )
                  ],


                ),
                Column(
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Icon(
                        Icons.home,
                        size: 40.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text("财富"),
                    )
                  ],


                ),
                Column(
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Icon(
                        Icons.home,
                        size: 40.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text("我的"),
                    )
                  ],
                )
              ],


            ),
          ),

          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 20,
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: Text("最新活动"
              ,
              ),




            ),


          )
        ],
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return (imageList[index]);
  }
}

