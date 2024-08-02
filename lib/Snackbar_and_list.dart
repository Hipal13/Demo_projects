import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackbarDemo extends StatefulWidget {
  @override
  _SnackbarDemoState createState() => _SnackbarDemoState();
}

class _SnackbarDemoState extends State<SnackbarDemo> {
  var lists = List<String>.generate(11, (index) => "List : $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter SnackBar Demo'),
      ),
      body: ListView.builder(
        itemCount: lists.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lists[index]),
            trailing: Container(
              width: 60,
              child: ElevatedButton(
                child: Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
                onPressed: () {
                  showSnackBar(context, index);
                },
              ),
            ),
          );
        },
      ),
    );
  }

   showSnackBar( context,  index) {
    var deletedRecord = lists[index];
    setState(() {
      lists.removeAt(index);
    });
    SnackBar snackBar = SnackBar(
      content: Text('Deleted $deletedRecord'),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          setState(() {
            lists.insert(index, deletedRecord);
          });
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}