import 'package:flutter/material.dart';
import 'package:kim_app/Tools/constants.dart';
import 'package:kim_app/screens/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TEXT_THEME_DEFAULT
      ),
      home: Homescreen(),
    );
  }
}
