import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footprint/widgets/widgets.dart';

Widget postheader() {
  return Container(
    height: 49,
    width: double.infinity,
    decoration: BoxDecoration(color: Colors.white),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, right: 10),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/dp2.jpg"),
              ),
            ),
            Text(
              "Priyank Vaghela",
              style: medStyle(14),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: SvgPicture.asset(
            "assets/dots.svg",
          ),
        ),
      ],
    ),
  );
}

Widget postPic() {
  return Container(
    width: double.infinity,
    height: 468,
    child: Image.asset(
      "assets/post1.png",
      fit: BoxFit.fill,
    ),
  );
}

Widget postDesc() {
  return Container(
    decoration: BoxDecoration(color: Colors.white),
    height: 200,
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 12),
                  child: SvgPicture.asset(
                    "assets/heart2.svg",
                    height: 24,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 12),
                  child: SvgPicture.asset("assets/comment.svg"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 12),
                  child: SvgPicture.asset("assets/send2.svg"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: SvgPicture.asset("assets/save.svg"),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Text(
            "100 Likes",
            style: boldStyle(14),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more",
            style: medStyle(15),
          ),
        ),
        Container(
            height: 45,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, right: 10),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/dp2.jpg"),
                  ),
                ),
              ],
            )),
      ],
    ),
  );
}
