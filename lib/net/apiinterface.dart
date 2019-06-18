import 'package:flutterhelloword/net/netutils.dart';
import 'package:dio/dio.dart';


class apiinterface {


  //登录接口

  static final String _API_Login = "web/registerandlogin/login.do";

  static Future<Map<String, dynamic>> getLogin(String loginName,
      String passWord) async {
    return netutils.postJson(_API_Login,
        {"mobile": loginName, "loginPwd": passWord});
  }

  //注册

  static final String _API_Regist = "";

  static Future<Map<String, dynamic>> getRegist(String loginPhone,
      String code) async {
    return netutils.postJson(_API_Regist, {
      "phone": loginPhone, "code": code});
  }


}