import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({super.key});

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Show Alert',
            style: TextStyle(fontSize: 20.0),),
          onPressed: (){
            _displayDialog(context);
          },
        ),
      ),
    );
  }

   _displayDialog(BuildContext context) async{
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text("Show Alert"),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                hintText: "Textfield in dialog"
              ),
            ),
            actions: [
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.of(context).pop();
                      _textFieldController.clear();
                    });

                  }, child: Text("submit"))
            ],
          );

    });
   }
}
