import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerDemo extends StatefulWidget {
  const ContainerDemo({super.key});

  @override
  State<ContainerDemo> createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Container example"),
      ),
      body: Container(
        height: 200,
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(30),
        transform: Matrix4.rotationZ(0.1),
        decoration: BoxDecoration(
          color: Colors.purple,
          border: Border.all(color: Colors.black, width: 3),
        ),
        child: const Text("Hello! i am inside a container!",
            style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
