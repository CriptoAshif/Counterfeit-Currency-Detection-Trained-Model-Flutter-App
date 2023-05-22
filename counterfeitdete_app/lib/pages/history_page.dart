// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:counterfeitdete_app/components/history_banner_component.dart';
import 'package:counterfeitdete_app/components/history_table_component.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: Column(
        children: [
          HistoryBanner(),
          SizedBox(
            height: 50,
          ),

          // For History Title
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 25.0, top: 0, bottom: 25),
              child: Text(
                "History",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Center(
            child: HistoryTableComponent(),
          ),
        ],
      ),
    );
  }
}
