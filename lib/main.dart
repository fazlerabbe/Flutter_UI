import 'package:flutter/material.dart';
import 'package:my_app1/Dismissible.dart';
import 'package:my_app1/Drawer.dart';
import 'package:my_app1/LIstGrid.dart';
import 'package:my_app1/alert.dart';
import 'package:my_app1/animatedWidget.dart';
import 'package:my_app1/bottom_Sheet.dart';
import 'package:my_app1/dropDownWidget.dart';
import 'package:my_app1/formWidget.dart';
import 'package:my_app1/image.dart';
import 'package:my_app1/imagePickerWidget.dart';
import 'package:my_app1/navigationBar.dart';
import 'package:my_app1/stack.dart';
import 'package:my_app1/tabBarWidget.dart';
import 'ButtonWidget.dart';
import 'Container_Size.dart';
import 'row_column.dart';
import 'SnackBar.dart';
import 'bottom_Sheet.dart';
import 'animatedWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(brightness: Brightness.light, primaryColor: Colors.red),
        home: ImagePickerWidget()
        );
  }
}
