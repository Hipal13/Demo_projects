import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToolTipDemo extends StatefulWidget {
  @override
  _ToolTipDemoState createState() => _ToolTipDemoState();
}

class _ToolTipDemoState extends State<ToolTipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tooltip Example"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                  waitDuration: Duration(seconds: 1),
                  showDuration: Duration(seconds: 2),
                  padding: EdgeInsets.all(5),
                  height: 35,
                  textStyle: TextStyle(
                      fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.green),
                  message: 'My Account',
                  child: ElevatedButton(
                    onPressed: () {  },
                    child: Icon(
                      Icons.account_box,
                      size: 100,
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                  waitDuration: Duration(seconds: 1),
                  showDuration: Duration(seconds: 2),
                  padding: EdgeInsets.all(5),
                  height: 35,
                  textStyle: TextStyle(
                      fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.green),
                  message: 'My Account 1',
                  child: ElevatedButton(
                    onPressed: () {  },
                    child: Icon(
                      Icons.account_box,
                      size: 100,
                    ),
                  )
              ),
            )
          ]
      ),
    );
  }
}