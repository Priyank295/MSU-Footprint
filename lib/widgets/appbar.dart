import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footprint/chat.dart';

Widget appbarMain(BuildContext context) {
  return AppBar(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(15),
      ),
    ),
    backgroundColor: Colors.transparent,
    flexibleSpace: Center(
      child: Container(
        margin: EdgeInsets.only(top: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              child: SvgPicture.asset("assets/add.svg"),
            ),
            SvgPicture.asset("assets/logo.svg"),
            Badge(
              badgeContent: Text("2"),
              position: BadgePosition.topEnd(),
              child: Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Icon(Icons.message)),
            )
          ],
        ),
      ),
    ),
    // leading: Container(
    //   margin: EdgeInsets.symmetric(horizontal: 20),
    //   child: SvgPicture.asset(
    //     "assets/logo.svg",
    //     width: 300,
    //   ),
    // ),
    // leadingWidth: 200,

    // title: Container(
    //   margin: EdgeInsets.symmetric(horizontal: 15),
    //   child: Text(
    //     "Instagram",
    //     style: TextStyle(
    //         color: Colors.black,
    //         fontFamily: "Instagram",
    //         fontSize: 20,
    //         fontWeight: FontWeight.w700,
    //         letterSpacing: 1.8),
    //   ),
    // ),
    actions: <Widget>[
      // Container(
      //   margin: EdgeInsets.symmetric(horizontal: 20),
      //   child: SvgPicture.asset(
      //     "assets/send2.svg",
      //     color: Colors.black,
      //     height: 25,
      //   ),
      // )
    ],
  );
}
