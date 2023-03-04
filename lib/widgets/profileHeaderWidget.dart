import 'package:flutter/material.dart';
import 'package:footprint/widgets/widgets.dart';

Widget profileHeaderWidget(BuildContext context) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(22),
          bottomLeft: Radius.circular(22),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height / 2.2,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/dp2.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Priyank Vaghela",
                style: boldStyle(22),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hi there, I am Priyank vaghela ",
                style: medStyle(12),
              ),
              Text(
                "#computerEngeneer #VP #FlutterDev",
                style: TextStyle(
                    color: Colors.purple,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("4K", style: boldStyle(20)),
                        Text(
                          "Following",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "SF",
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Container(
                      height: 35,
                      width: 0.5,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Text("2.6K", style: boldStyle(20)),
                        Text(
                          "Followers",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "SF",
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color(0xfffa06ef3),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        "Follow",
                        style: boldWhiteStyle(15),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color(0xffff94c84),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        "Message",
                        style: boldWhiteStyle(15),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
