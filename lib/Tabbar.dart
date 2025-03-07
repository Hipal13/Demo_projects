import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
              ],
            ), // TabBar
            title: const Text('TabBar'),
            backgroundColor: Colors.yellowAccent,
          ), // AppBar
          body: const TabBarView(
            children: [
              Icon(Icons.music_note),
              Icon(Icons.music_video),
              Icon(Icons.camera_alt),
              Icon(Icons.grade),
              Icon(Icons.email),
            ],
          ),
        ),
    );
  }
}
