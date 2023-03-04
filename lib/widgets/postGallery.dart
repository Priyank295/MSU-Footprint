import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:footprint/widgets/framesPostWidget.dart';

import 'package:photo_manager/photo_manager.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List<AssetEntity> assets = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getPermission();
    _fetchAssets();
  }

  _getPermission() async {
    final permitted = await PhotoManager.requestPermissionExtend();
    // if (!permitted) return;
    // null;
  }

  _fetchAssets() async {
    final albums = await PhotoManager.getAssetPathList(onlyAll: true);
    final recentAlbum = albums.first;

    final recentAssets =
        await recentAlbum.getAssetListRange(start: 0, end: 10000);

    setState(() {
      assets = recentAssets;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // A grid view with 3 items per row
        crossAxisCount: 4,
      ),
      itemCount: assets.length,
      itemBuilder: (_, index) {
        return AssetThumbnail(asset: assets[index]);
      },
    );
  }
}

class AssetThumbnail extends StatelessWidget {
  const AssetThumbnail({
    required this.asset,
  });

  final AssetEntity asset;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List?>(
      future: asset.thumbnailData,
      builder: (_, snapshot) {
        final bytes = snapshot.data;
        // If we have no data, display a spinner
        if (bytes == null) return CircularProgressIndicator();
        // If there's data, display it as an image
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  if (asset.type == AssetType.image) {
                    // If this is an image, navigate to ImageScreen
                    // return ImageScreen(imageFile: asset.file);
                    // return FramePost(
                    //   assets: asset,
                    // );

                    return FramePost(assets: asset);
                  } else {
                    // if it's not, navigate to VideoScreen
                    return Container();
                  }
                },
              ),
            );
          },
          child: Stack(
            children: [
              // Wrap the image in a Positioned.fill to fill the space
              Positioned.fill(
                child: Image.memory(bytes, fit: BoxFit.cover),
              ),
              // Display a Play icon if the asset is a video
              if (asset.type == AssetType.video)
                Padding(
                  padding: const EdgeInsets.only(right: 5, bottom: 5),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                        asset.videoDuration.inMinutes.toString().length < 1
                            ? "00"
                            : "0" +
                                asset.videoDuration.inMinutes.toString() +
                                ":" +
                                asset.videoDuration.inSeconds.toString(),
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({
    required this.imageFile,
  });

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

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
