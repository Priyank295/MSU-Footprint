import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footprint/widgets/widgets.dart';

Widget DesignPost() {
  return Container(
    height: 570,
    width: double.infinity,
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(12)),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10, top: 15),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/dp2.jpg"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    "Priyank Vaghela",
                    style: medStyle(14),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15, right: 20),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset(
                      "assets/send2.svg",
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: SvgPicture.asset(
                      "assets/dots2.svg",
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Container(
            margin: EdgeInsets.all(12),
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/post1.png"),
                ),
                borderRadius: BorderRadius.circular(12)),
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                // child: Stack(
                //   alignment: Alignment.bottomCenter,
                //   children: [
                //     Container(
                //       height: 60,
                //       width: 180,
                //       decoration: BoxDecoration(
                //           color: Colors.white.withOpacity(0.9),
                //           borderRadius: BorderRadius.circular(50)),
                //       child: Container(
                //         margin: EdgeInsets.symmetric(horizontal: 10),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Row(
                //               children: [
                //                 SvgPicture.asset(
                //                   "assets/heart2.svg",
                //                   height: 25,
                //                 ),
                //                 SizedBox(width: 3),
                //                 Text(
                //                   "2.3K",
                //                   style: medStyle(14),
                //                 )
                //               ],
                //             ),
                //             Row(
                //               children: [
                //                 SvgPicture.asset("assets/chat.svg",
                //                     height: 25, color: Colors.black),
                //                 SizedBox(width: 3),
                //                 Text(
                //                   "173",
                //                   style: medStyle(14),
                //                 ),
                //               ],
                //             ),
                //             SvgPicture.asset("assets/save2.svg")
                //           ],
                //         ),
                //       ),
                //     )
                //   ],
                // ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0.3,
                      child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.pink,
                              child: Center(
                                  child: SvgPicture.asset(
                                "assets/heart4.svg",
                                color: Colors.white,
                                height: 18,
                              )),
                            ),
                            Container(
                              height: 25,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.grey.withOpacity(0.7),
                              ),
                              margin: EdgeInsets.only(left: 8),
                              child: Center(
                                child: Text(
                                  "2.3K",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "SF",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 12,
                      bottom: 0.3,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Center(
                            child: SvgPicture.asset(
                          "assets/msg.svg",
                          height: 18,
                        )),
                      ),
                    ),
                  ],
                ))
            // child: ClipRRect(
            //   // borderRadius: BorderRadius.circular(12),`
            //   // child: Image.asset(
            //   //   "assets/post1.png",
            //   //   fit: BoxFit.cover,
            //   // ),
            // ),
            ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more",
            style: medStyle(15),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Text(
            "View comments",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    ),
  );
}
