import 'package:flutter/material.dart';



class MyOrientationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrientationBuilder Example'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: OrientationBuilder(
          builder: (context, orientation) {
            // Build UI elements based on device orientation
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  // Display different icons based on orientation
                  orientation == Orientation.portrait
                      ? Icons.phone_android
                      : Icons.phone_iphone,
                  size: 100.0,
                ),
                SizedBox(height: 20.0),
                Text(
                  // Display different text based on orientation
                  'Device is in ${orientation == Orientation.portrait ? 'Portrait' : 'Landscape'} mode',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
