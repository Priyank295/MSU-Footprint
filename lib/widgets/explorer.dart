import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:footprint/widgets/widgets.dart';

Widget explorerSearch() {
  return Container(
      margin: EdgeInsets.only(left: 30),
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Exploror",
            style: boldStyle(25),
          ),
          Container(
            width: 200,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          )
        ],
      ));
}
