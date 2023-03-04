import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../image_data.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: StaggeredGrid.count(

    //     crossAxisCount: 3,
    //     shrinkWrap: true,
    //     itemCount: imageList.length,
    //     itemBuilder: (context, index) => ImageCard(
    //       imageData: imageList[index],
    //     ),
    //     staggeredTileBuilder: (index) => StaggeredTile.count(
    //         (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1),
    //     mainAxisSpacing: 8.0,
    //     crossAxisSpacing: 8.0,
    //   ),
    // );
    return Container();
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({required this.imageData});

  final ImageData imageData;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.network(imageData.imageUrl, fit: BoxFit.cover),
    );
  }
}
