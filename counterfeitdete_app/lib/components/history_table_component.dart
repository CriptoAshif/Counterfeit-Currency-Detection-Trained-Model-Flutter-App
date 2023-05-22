// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:counterfeitdete_app/colors/navtheme.dart';
import 'package:flutter/material.dart';

class HistoryTableComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(10.0), // Set the desired border radius
        child: Container(
          height: 250, // Set the desired height of the container
          width: 385,
          color: Colors.white,
          child: Column(
            children: [
              _buildHeader(),
              SizedBox(height: 8.0), // Add spacing between header and data rows
              Expanded(
                child: ListView.builder(
                  itemCount: 10, // Replace with the actual number of rows
                  itemBuilder: (BuildContext context, int index) {
                    return _buildRow(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: myNavColor,
      height: 50, // Set the height of the table header
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Number',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Image',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Result',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(int index) {
    return Container(
      color: index % 2 == 0 ? Colors.grey[200] : Colors.transparent,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Data ${index + 1}',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Image ${index + 1}',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Result ${index + 1}',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
