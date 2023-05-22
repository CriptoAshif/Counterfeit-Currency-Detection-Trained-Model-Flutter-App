// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

const int myNavColorValue = 0xFFB4C7F4;

final MaterialColor myNavColor = MaterialColor(
  myNavColorValue,
  <int, Color>{
    50: Color(0xFFE5EDFB),
    100: Color(0xFFCCDBF8),
    200: Color(0xFFB4C7F4),
    300: Color(0xFF9CB4F1),
    400: Color(0xFF849FF0),
    500: Color(myNavColorValue),
    600: Color(0xFF5F85ED),
    700: Color(0xFF476FEB),
    800: Color(0xFF2F59E8),
    900: Color(0xFF173EE6),
  },
);
