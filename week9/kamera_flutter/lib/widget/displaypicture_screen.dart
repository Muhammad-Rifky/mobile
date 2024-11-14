// A widget that displays the picture taken by the user.
import 'package:flutter/material.dart';
import 'dart:io';

class DisplaypictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplaypictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture - 2241720176')),
      //The image is stored as a file on the device. Use the `Image.file` constructor
      //constructor with the given path to display the image.
      body: Image.file(File(imagePath)),
    );
  }
}
