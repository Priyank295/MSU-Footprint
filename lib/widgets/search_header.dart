import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffff9ed32),
                      Color(0xfffee2a7b),
                      Color(0xfff002aff),
                    ],
                    begin: Alignment(-1.0, -2.0),
                    end: Alignment(1.0, 2.0),
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/ig.svg",
                    color: Colors.white,
                    height: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "IGTV",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SF",
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10),
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: Color(0xfff525cd5),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/shop.svg",
                    color: Colors.white,
                    height: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "SHOP",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SF",
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10),
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: Color(0xfffde2b7c),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/run2.svg",
                    color: Colors.white,
                    height: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "FITNESS",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SF",
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10),
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: Color(0xfff8034b0),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/style.svg",
                    color: Colors.white,
                    height: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "STYLE",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SF",
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10),
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: Color(0xfffffac4f),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/music.svg",
                    color: Colors.white,
                    height: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "MUSIC",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SF",
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 20),
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: Color(0xffff34e55),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/game.svg",
                    color: Colors.white,
                    height: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "GAMING",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SF",
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
