import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:report_app/service/product.dart';
import '../util/formate.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: FractionalOffset(0.95, 0.8),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/server_setting");
            },
            child: Text("服务器地址"),
          ),
        ),
        Image(
          image: AssetImage("assert/logo.png"),
          width: 100,
          height: 300,
          alignment: FractionalOffset(0.5,0.8),
          fit: BoxFit.contain,
        ),
        Container(
          height: 200,
          width: 450,
          padding: EdgeInsets.all(8.0),
          child:  Center(
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: "手机号",
                        hintText: "手机号",
                        prefixIcon: Icon(Icons.person)),
                    validator: (v) {
                      var error;
                      error = v.trim().length > 0 ? null : "手机号不能为空";
                      error = FormateUtils.isChinaPhoneLegal(v.trim())
                          ? null
                          : "手机号格式不正确";
                      return error;
                    },
                    onSaved: (v) {
                      username = v;
                    },
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: "密码",
                        hintText: "密码",
                        prefixIcon: Icon(Icons.lock)),
                    /*是否加密*/
                    obscureText: true,
                    validator: (v) {
                      String error;
                      error = v.trim().length > 0 ? null : "密码不能为空";
                      error = v.trim().length < 9 ? null : "密码长度不能小于6位";
                      return error;
                    },
                    onSaved: (v) {
                      password = v;
                    },
                  ),
                  TextButton(onPressed: (){
                    ProductService service = ProductService();
                    service.login(username, password, "mock");
                  }, child: Text("登录"))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
