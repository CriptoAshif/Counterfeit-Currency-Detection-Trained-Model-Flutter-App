// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:counterfeitdete_app/colors/navtheme.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerComponent extends StatefulWidget {
  final Function(String) onImagePicked;

  ImagePickerComponent({required this.onImagePicked});

  @override
  ImagePickerComponentState createState() => ImagePickerComponentState();
}

class ImagePickerComponentState extends State<ImagePickerComponent> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final image = File(pickedFile.path);
      setState(() {
        _selectedImage = image;
      });
      widget.onImagePicked(image.path);
    } else {
      print('No image selected');
    }
  }

  void _removeImage() {
    setState(() {
      _selectedImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: myNavColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  if (_selectedImage != null)
                    Image.file(
                      _selectedImage!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  if (_selectedImage == null)
                    Container(
                      color: myNavColor,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo_camera,
                              size: 48,
                              color: Colors.white,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Upload Image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: _pickImage,
                  child: Text('Upoad Image'),
                ),
                SizedBox(width: 8.0),
                if (_selectedImage != null)
                  IconButton(
                    onPressed: _removeImage,
                    icon: Icon(
                      Icons.delete,
                      size: 35,
                      color: Color(0xFFFF7979),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
