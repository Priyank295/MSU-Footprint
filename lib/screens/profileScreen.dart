import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_svg/svg.dart';

import '../widgets/profileHeaderWidget.dart';
import '../widgets/profile_igtv.dart';
import '../widgets/profile_post.dart';
import '../widgets/profile_save.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //List<Widget> tabs = [Post(), IGTV(), Save()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  profileHeaderWidget(context),
                ],
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Material(
              color: Colors.white,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 2,
                indicatorColor: Colors.pink,
                tabs: [
                  Tab(
                    icon: SvgPicture.asset(
                      "assets/grid.svg",
                      height: 25,
                      width: 25,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      "assets/ig.svg",
                      height: 25,
                      width: 25,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      "assets/save.svg",
                      height: 20,
                      width: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Post(),
                  IGTV(),
                  Save(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
