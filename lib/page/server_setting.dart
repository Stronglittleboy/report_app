import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServerSetting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 200,
          child: MyForm()
        )
      ),
    );
  }


}
class MyForm  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyForm> {
  String serverPath;
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print('测试 $serverPath 哈哈哈');
    prefs.setString("serverSetting", serverPath);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            autofocus: true,
            minLines: 1,
            maxLines: 4,
            onSaved: (str){
              serverPath =str;
            },
            decoration:new InputDecoration(hintText: serverPath) ,
          ),
          Builder(builder:
              (ctx)=> TextButton(
              onPressed: () {
                final formState = Form.of(ctx);
                formState.save();
                _incrementCounter();
                Navigator.pushNamed(context, "/login");
              },
              child: Text(
                "设置服务",style: TextStyle(fontSize: 20,color: Colors.black54),
              )
          )),
        ],
      ),
    );

  }


  void get_initValue()  async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      serverPath = prefs.getString("serverSetting");
      print(serverPath);
    });
  }
  @override
  void initState() {
    super.initState();
    get_initValue();
  }
}