// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:counterfeitdete_app/components/banner_component.dart';
import 'package:counterfeitdete_app/components/buttom_navbar_component.dart';
import 'package:counterfeitdete_app/components/featured_options_component.dart';
import 'package:counterfeitdete_app/components/history_table_component.dart';
import 'package:counterfeitdete_app/pages/faq_page.dart';
import 'package:counterfeitdete_app/pages/scan_page.dart';
import 'package:counterfeitdete_app/pages/upload_image_page.dart';
import 'package:counterfeitdete_app/pages/history_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      backgroundColor: Color.fromARGB(255, 247, 248, 249),
      body: Column(
        children: [
          BannerComponent(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 25.0, top: 25.0, bottom: 5),
              child: Text(
                "Features",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FeaturedOptionsComponent(
                text: 'Upload Image',
                icon: Icons.cloud_upload,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UploadImagePage(),
                    ),
                  );
                },
                marginTop: 16.0,
                width: 115.0,
                height: 100.0,
              ),
              FeaturedOptionsComponent(
                text: 'Scan Image',
                icon: Icons.qr_code_scanner_rounded,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScanPage(),
                    ),
                  );
                },
                marginTop: 16.0,
                width: 115.0,
                height: 100.0,
              ),
              FeaturedOptionsComponent(
                text: 'FAQ',
                icon: Icons.help,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FaqPage(),
                    ),
                  );
                },
                marginTop: 16.0,
                width: 115.0,
                height: 100.0,
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 25.0, top: 25.0, bottom: 15),
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
          HistoryTableComponent(),
          SizedBox(height: 33),
          BottomNavbarComponent(
            selectedIndex: 0,
            onItemSelected: (index) {
              if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HistoryPage(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
