import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:footprint/screens/homeScreen.dart';

import 'package:line_icons/line_icon.dart';
import 'package:photo_manager/photo_manager.dart';

import '../widgets/framesPostWidget.dart';
import '../widgets/postGallery.dart';
import '../widgets/widgets.dart';
import 'home.dart';

class CreatePostScreen extends StatefulWidget {
  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
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

    final recentAssets = await recentAlbum.getAssetListRange(start: 0, end: 10);

    setState(() {
      assets = recentAssets;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => HomeScreen())),
          child: LineIcon(
            Icons.close_sharp,
            size: 30,
            color: Colors.black,
          ),
        ),
        leadingWidth: 50,
        title: Text("New post", style: boldStyle(20)),
        actions: [
          SvgPicture.asset(
            "assets/arrow2.svg",
            height: 30,
            color: Color(0xfffa06ef3),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverList(
              delegate: SliverChildListDelegate([
                FramePost(
                  assets: assets.first,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Gallery",
                          style: boldStyle(20),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: LineIcon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            )
          ];
        },
        // body: ListView(
        //   shrinkWrap: true,
        //   children: [
        //     Container(
        //       height: 40,
        //       width: double.infinity,
        //       color: Colors.white,
        //     ),
        //   ],
        // ),
        body: Gallery(),
      ),
    );
  }
}
