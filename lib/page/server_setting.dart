import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServerSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextField(
            autofocus: true,
            minLines: 3,
          ),TextButton(onPressed: null, child: null)
        ],
      ),
    );
  }
}
