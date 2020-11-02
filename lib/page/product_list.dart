import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gzx_dropdown_menu/gzx_dropdown_menu.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    List<String> items = ["Male", "Female", "Other"];
    return Material(
        child: Column(
      children: [
        Container(
          child: DropDown(
            items: items,
            hint: Text("请选择"),
            onChanged: print,
          ),
        ),
        Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(5.0),
                itemExtent: 5.0,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ProcuteItem();
                }))
      ],
    ));
  }
}

class ProcuteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Row(
          children: [
            Text('产品名称：李白'),
            Text('产品数量：100'),
            Text('产品规格：100*200'),
            Text('产品备注：不是一般的人'),
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Text('产品名称：李白'),
            Text('产品数量：100'),
            Text('产品规格：100*200'),
            Text('产品备注：不是一般的人'),
          ],
        ))
      ],
    );
  }
}
