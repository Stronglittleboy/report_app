import 'dart:convert';
import 'package:dio/dio.dart';
import '../dto/UserInfo.dart';

class ProductService {
  final String loginUrl = "/login";
  static Dio dio = new Dio();

  Future<UserInfo> login(String userName, String password,
      String serverPath) async {
    var userInfo = UserInfo(userName: userName, password: password);
    userInfo.realName = "李白";
    var loginDTO = jsonEncode(userInfo);
    print(loginDTO);
    var r = await dio.post(serverPath, data: loginDTO);
    print(r);
    return userInfo;
  }
}