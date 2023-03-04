import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:footprint/screens/homeScreen.dart';
import 'package:footprint/screens/profileScreen.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import 'likeScreen.dart';
import 'searchScreen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  PageController controller = PageController();
  int _selectedIndex = 0;
  List<Widget> screen = [
    HomeScreen(),
    SearchScreen(),
    LikeScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      controller.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffff4f8fb),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(17), topRight: Radius.circular(17)),
          child: BottomNavigationBar(
            selectedItemColor: Colors.pink,
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                // icon: LineIcon(
                //   LineIcons.home,
                //   color: Colors.black,
                // ),
                icon: SvgPicture.asset(
                  "assets/home.svg",
                  color: _selectedIndex == 0 ? Colors.pink : Colors.black,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/search.svg",
                    color: _selectedIndex == 1 ? Colors.pink : Colors.black,
                  ),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/heart2.svg",
                    color: _selectedIndex == 2 ? Colors.pink : Colors.black,
                  ),
                  label: "Notification"),
              BottomNavigationBarItem(
                // icon: Padding(
                //   padding: const EdgeInsets.all(2.0),
                //   child: CircleAvatar(
                //     radius: 15,
                //     backgroundImage: AssetImage("assets/dp2.jpg"),
                //   ),
                // ),
                label: "User",
                icon: Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 35,
                  width: 35,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1.5),
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage("assets/dp2.jpg"),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.purple,
                      Colors.orangeAccent,
                      Colors.purple,
                      Colors.pink
                    ]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
            type: BottomNavigationBarType.fixed,
          ),
        ),
        body: PageView.builder(
          itemCount: 4,
          controller: controller,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (page) {
            setState(() {
              _selectedIndex = page;
            });
          },
          itemBuilder: (context, position) {
            return Container(
                child: Center(
              child: screen[position],
            ));
          },
        ));
  }
}
