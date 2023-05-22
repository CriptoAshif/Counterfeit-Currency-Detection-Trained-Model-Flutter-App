// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:counterfeitdete_app/colors/navtheme.dart';
import 'package:flutter/material.dart';
import 'package:counterfeitdete_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CounterfeitDete App',
      theme: ThemeData(
        primarySwatch: myNavColor,
        appBarTheme: AppBarTheme(
          elevation: 0, // Set elevation to 0 to remove the shadow
        ),
      ),
      home: HomePage(),
    );
  }
}
