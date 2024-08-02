import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ToastExample extends StatefulWidget {
  const ToastExample({super.key});

  @override
  State<ToastExample> createState() => _ToastExampleState();
}

class _ToastExampleState extends State<ToastExample> {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
          appBar: AppBar(
            title: Text('Toast Notification Example'),
          ),
          body: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: ElevatedButton(
                child: Text('click to show'),
                onPressed: showToast,
              ),
            ),
          )
    );
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: 'This is toast notification',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow
    );
  }
}
