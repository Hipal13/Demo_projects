import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("Rich Text Widget Example")
        ),
        body: Container(
            child: Center(
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    children: [
                      TextSpan(text: ' Sign up',
                          style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {}
                      ),
                      const WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(Icons.add, color: Colors.red),
                        ),
                      ),
                    ]
                ),
              ),
            )
        )
    );
  }
}