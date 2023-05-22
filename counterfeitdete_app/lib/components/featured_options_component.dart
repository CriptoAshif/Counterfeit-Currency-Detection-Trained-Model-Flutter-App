// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class FeaturedOptionsComponent extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double marginTop;

  const FeaturedOptionsComponent({
    required this.text,
    required this.icon,
    required this.onPressed,
    this.width = 200.0,
    this.height = 50.0,
    this.marginTop = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: marginTop),
      child: Container(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              SizedBox(height: 8.0),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
