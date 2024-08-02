
import 'package:demo1/Card.dart';
import 'package:demo1/Progressbar.dart';
import 'package:demo1/RadioButton.dart';
import 'package:demo1/RichText.dart';
import 'package:demo1/Row.dart';
import 'package:demo1/Scaffold.dart';
import 'package:demo1/Sliderimage.dart';
import 'package:demo1/Snackbar_and_list.dart';
import 'package:demo1/Stack.dart';
import 'package:demo1/Tabbar.dart';
import 'package:demo1/Textfield.dart';
import 'package:demo1/ToolTipdemo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Gallery_camera_image.dart';
import 'Lazy_Loader.dart';
import 'OrientationBuilder.dart';
import 'OrientationDemo.dart';
import 'Pageview.dart';
import 'Skeleton.dart';
import 'Staggered_Grid_View.dart';
import 'Stepper.dart';
import 'Table_Calender.dart';
import 'Table_data.dart';
import 'AlertDialog.dart';
import 'BottomNavigationBar.dart';
import 'Chart_line.dart';
import 'Column.dart';
import 'Container.dart';
import 'DropdownButton.dart';
import 'ExpansionTilecard.dart';
import 'Fluttertoast.dart';
import 'Form.dart';
import 'Gridview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      color: Colors.amberAccent,
      //supportedLocales: {const Locale('en', ' ')},
      debugShowCheckedModeBanner: false,
      home: StaggeredPage(),
    );
  }
}
