import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dashed_circle/dashed_circle.dart';
import 'package:footprint/widgets/widgets.dart';

class StoryTray extends StatelessWidget {
  const StoryTray({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // Column(
              //   children: [
              //     Container(
              //       margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              //       child: DashedCircle(
              //         child: Padding(
              //           padding: const EdgeInsets.all(4.0),
              //           child: CircleAvatar(
              //             radius: 30,
              //             backgroundImage: AssetImage("assets/dp2.jpg"),
              //           ),
              //         ),
              //         color: Colors.deepOrangeAccent,
              //       ),
              //     ),
              //     Center(
              //       child: Text(
              //         "Your story",
              //         style: normalStyle(11.5),
              //       ),
              //     ),
              //   ],
              // ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                    ),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)),
                    child: Icon(
                      Icons.add,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 5),
                    child: Text(
                      "Your story",
                      style: normalStyle(11.5),
                    ),
                  ),
                ],
              ),
              // Container(
              //   margin: EdgeInsets.only(left: 15),
              //   height: 25,
              //   width: 60,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     border: Border.all(
              //       width: 2,
              //     ),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.all(2),
              //     child: ClipRRect(
              //       borderRadius: BorderRadius.circular(18),
              //       child: Image.asset("assets/dp2.jpg"),
              //     ),
              //   ),
              // ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 60,
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: kInnerDecoration,
                        child: Padding(
                          padding: const EdgeInsets.all(1.5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: Image.asset("assets/dp2.jpg",
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                    decoration: kGradientBoxDecoration,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 5),
                    child: Text(
                      "Your story",
                      style: normalStyle(11.5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 0.1,
          width: double.infinity,
          color: Colors.black45,
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
