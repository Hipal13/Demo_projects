import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnDemo extends StatefulWidget {
  const ColumnDemo({super.key});

  @override
  State<ColumnDemo> createState() => _ColumnDemoState();
}

class _ColumnDemoState extends State<ColumnDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 55,
        title: Text("Flutter Column Example"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(12.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.red
                ),
                child: Text("React.js",style: TextStyle(color:Colors.yellowAccent,fontSize:20),),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(12.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.red
                ),
                child: Text("Flutter",style: TextStyle(color:Colors.yellowAccent,fontSize:20),),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(12.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.red
                ),
                child: Text("MySQL",style: TextStyle(color:Colors.yellowAccent,fontSize:20),),
              )
            ]
        ),
      ),
    );
  }
}
