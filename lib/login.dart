import 'package:flutter/material.dart';
import 'package:flutterhelloword/ThemeColors.dart';
import 'package:dio/dio.dart';
import 'package:flutterhelloword/net/apiinterface.dart';

class login extends StatelessWidget {
  String _email, _password;
  bool _isObscure = true;
  Color _eyeColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        /* appBar: AppBar(
          title: Center(
            child: Text("登录"),
          ),

        ),*/

        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg_login.png"), fit: BoxFit.cover)

          ),

          child: ListView(

            padding: EdgeInsets.symmetric(horizontal: 22.0),
            children: <Widget>[
              SizedBox(height: 70.0),
              Image.asset("images/login_logo.png"),
              SizedBox(height: 50.0),
              buildEmailTextField(),
              SizedBox(height: 30.0),
              PasswordText(context),
              SizedBox(height: 60.0),
              buildLoginButton(context),
              SizedBox(height: 30.0),
              //buildOtherLogin(context),
              BottomAppBar(


              )
            ],

          )

          ,


        )
        ,
      )
      ,

    );
  }

  TextFormField buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'phone',
      ),
      onSaved: (String value) => _email = value,
    );
  }

  TextFormField PasswordText(BuildContext context) {
    return TextFormField(
      onSaved: (String value) => _password = value,
      obscureText: _isObscure,
      validator: (String value) {
        if (value.isEmpty) {
          return '请输入密码';
        }
      },
      decoration: InputDecoration(
          labelText: 'Password',
          suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: _eyeColor,
              ),
              onPressed: () {


              })),

    );
  }

  Align buildLoginButton(BuildContext context) {
    return Align(

      child: SizedBox(
        height: 45.0,
        width: 270.0,
        child: RaisedButton(
            child: Text(
              '登录',
              style: Theme
                  .of(context)
                  .primaryTextTheme
                  .headline,
            ),
            color: ThemeColors.colorRed,
            onPressed: () {
              //apiinterface.getLogin(loginName, passWord)
            }

        ),
      ),

    );
  }

  Text buildOtherLogin(BuildContext context) {

  }
}




