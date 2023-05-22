// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:counterfeitdete_app/components/image_picker_component.dart';
import 'package:flutter/material.dart';

class UploadImagePage extends StatelessWidget {
  void _handleImagePicked(String imagePath) {
    // Handle the selected image path here
    print('Image picked: $imagePath');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImagePickerComponent(
            onImagePicked: _handleImagePicked, // Pass the callback function
          ),
        ],
      ),
    );
  }
}
