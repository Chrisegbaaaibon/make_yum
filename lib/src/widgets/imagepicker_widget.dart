import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> _imageFiles = [];

  Future<void> _pickImage(ImageSource source) async {
    final List<XFile>? pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles != null && pickedFiles.isNotEmpty) {
      setState(() {
        _imageFiles.addAll(pickedFiles);
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      _imageFiles.removeAt(index);
    });
  }

  Widget _buildImageList() {
    if (_imageFiles.length > 3) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: _buildImageWidgets()),
      );
    } else {
      return Row(
        children: _buildImageWidgets(),
        mainAxisAlignment: MainAxisAlignment.center,
      );
    }
  }

  List<Widget> _buildImageWidgets() {
    if (_imageFiles.isEmpty) {
      return [
        const Text(
          'No images selected',
          style: TextStyle(fontSize: 20.0),
        ),
      ];
    }
    return _imageFiles
        .asMap()
        .map((index, file) => MapEntry(
              index,
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    //Add a condition if there are images or display 'No images selected'
                    Image.file(
                      File(file.path),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    IconButton(
                      icon: const Icon(Icons.remove_circle, color: Colors.grey),
                      onPressed: () => _removeImage(index),
                    ),
                  ],
                ),
              ),
            ))
        .values
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          child: _buildImageList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => _pickImage(ImageSource.camera),
              child: const Icon(Icons.camera),
            ),
            TextButton(
              onPressed: () => _pickImage(ImageSource.gallery),
              child: const Icon(Icons.image),
            ),
          ],
        ),
      ],
    );
  }
}
