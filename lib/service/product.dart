import 'dart:convert';
import 'package:dio/dio.dart';
import '../dto/user_info.dart';
import '../dto/product.dart';

class ProductService {
  final String loginUrl = "/login";
  static Dio dio = new Dio();

  Future<UserInfo> login(String userName, String password,
      String serverPath) async {
    var userInfo = UserInfo(userName: userName, password: password);
    userInfo.realName = "李白";
    var loginDTO = jsonEncode(userInfo);
    var r = await dio.post(serverPath, data: loginDTO);
    return userInfo;
  }

  Future<List<Product>> productList(String password,
      String serverPath) async {
    List<Product> productList = [
      Product(productName: "测试1",num: 20,specification: "测试描述",color: "红色"),
      Product(productName: "测试2",num: 30,specification: "测试描述",color: "绿色"),
      Product(productName: "测试3",num: 40,specification: "测试描述",color: "蓝色")
    ];
    return productList;
  }
}