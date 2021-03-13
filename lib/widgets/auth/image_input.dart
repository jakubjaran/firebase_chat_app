import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _pickedImage;

  void _pickImage() async {
    final picker = ImagePicker();
    final image = await picker.getImage(source: ImageSource.camera);
    if (image == null) {
      return;
    }
    setState(() {
      _pickedImage = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.grey[300],
          backgroundImage:
              _pickedImage != null ? FileImage(_pickedImage) : null,
        ),
        TextButton.icon(
          onPressed: _pickImage,
          icon: Icon(Icons.add_a_photo),
          label: Text('Take a Photo'),
        ),
      ],
    );
  }
}
