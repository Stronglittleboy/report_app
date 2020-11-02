import 'package:flutter/material.dart';
import 'page/login.dart';
import 'route/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '粤鑫纸业',
      home:Login(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
