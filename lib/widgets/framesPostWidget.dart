import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';

class FramePost extends StatelessWidget {
  final AssetEntity assets;

  FramePost({required this.assets});
  @override
  Widget build(BuildContext context) {
    AppBar appbar = AppBar(
      title: Text("text"),
    );
    return Container(
      height:
          MediaQuery.of(context).size.height / 2 - appbar.preferredSize.height,
      width: double.infinity,
      child: ImageScreen(imageFile: assets.file),
    );
  }
}

class ImageScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ImageScreen({required this.imageFile});

  final Future<File?> imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: FutureBuilder<File?>(
        future: imageFile,
        builder: (_, snapshot) {
          final file = snapshot.data;
          if (file == null) return Container();
          return Image.file(file);
        },
      ),
    );
  }
}
