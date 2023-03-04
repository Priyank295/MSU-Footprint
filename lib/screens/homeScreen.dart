import 'package:flutter/material.dart';

import 'chatroomScreen.dart';
import 'createStoryScreen.dart';
import 'home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController controller = PageController(initialPage: 1);
  int _selectedIndex = 0;

  List<Widget> screen = [
    CreateStoryScreen(),
    Home(),
    ChatRoomScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      controller: controller,
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
    );
  }
}
