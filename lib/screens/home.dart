import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/designPost.dart';
import '../widgets/explorer.dart';
import '../widgets/storyTray.dart';
import 'chatroomScreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff2f6f9),
      appBar: AppBar(
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => ChatRoomScreen()));
                  },
                  child: Badge(
                      badgeContent: Text(
                        "2",
                        style: TextStyle(color: Colors.white),
                      ),
                      badgeStyle: BadgeStyle(
                        badgeColor: Colors.red,
                      ),
                      position: BadgePosition.topEnd(top: -10, end: 15),
                      child: Container(
                        margin: EdgeInsets.only(right: 30),
                        child: SvgPicture.asset("assets/send2.svg"),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StoryTray(),
            explorerSearch(),
            DesignPost(),
            // postheader(),
            // postPic(),
            // postDesc(),
          ],
        ),
      ),
    );
  }
}
