// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:counterfeitdete_app/colors/navtheme.dart';
import 'package:flutter/material.dart';

class BottomNavbarComponent extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const BottomNavbarComponent({
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemSelected,
      backgroundColor: myNavColor, // Set your desired background color
      selectedItemColor:
          Color.fromARGB(255, 120, 79, 243), // Set the selected item color
      unselectedItemColor: Colors.black, // Set the unselected item color
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code_scanner_sharp),
          label: 'Scan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
      ],
    );
  }
}
