import 'package:flutter/material.dart';

import '../page/server_setting.dart';
import '../page/login.dart';
import '../page/product_detail.dart';
import '../page/product_list.dart';

final routes = {
  "/": (context) => Login(),
  "/login": (contex) => Login(),
  "/server_setting": (contex) => ServerSetting(),
  "/product_detail": (contex) => ProductDetail(),
  "/product_list": (contex) => ProductList(),
};

//固定写法
// ignore: top_level_function_literal_block
var onGenerateRoute=(RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  Route route;
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
     route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
    } else {
     route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
    }
  }
  return route;
} ;
