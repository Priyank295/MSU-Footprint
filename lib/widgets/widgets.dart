import 'package:flutter/material.dart';

TextStyle loginPageStyle() {
  return TextStyle(
    fontFamily: "Instagram",
    fontSize: 40,
  );
}

InputDecoration textinputDecoration(String hint) {
  return InputDecoration(
    contentPadding: EdgeInsets.only(left: 20),
    hintText: hint,
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Color(0xfffd2d2d2))),
    border: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Color(0xfffd2d2d2))),
    hintStyle: TextStyle(
      color: Color(0xffAEAEAE),
    ),
  );
}

TextStyle normalStyle(double size) {
  return TextStyle(
    color: Colors.black,
    fontFamily: "SF",
    fontSize: size,
  );
}

TextStyle normalWhiteStyle(double size) {
  return TextStyle(
    color: Colors.white,
    fontFamily: "SF",
    fontSize: size,
  );
}

TextStyle boldStyle(double size) {
  return TextStyle(
      color: Colors.black,
      fontFamily: "SF",
      fontSize: size,
      fontWeight: FontWeight.w700);
}

TextStyle boldWhiteStyle(double size) {
  return TextStyle(
      color: Colors.white,
      fontFamily: "SF",
      fontSize: size,
      fontWeight: FontWeight.w700);
}

TextStyle medStyle(double size) {
  return TextStyle(
      color: Colors.black,
      fontFamily: "SF",
      fontSize: size,
      fontWeight: FontWeight.w600);
}

TextStyle medWhiteStyle(double size) {
  return TextStyle(
      color: Colors.white,
      fontFamily: "SF",
      fontSize: size,
      fontWeight: FontWeight.w600);
}

final kInnerDecoration = BoxDecoration(
  color: Colors.white,
  // border: Border.all(color: Colors.white),
  borderRadius: BorderRadius.circular(20),
);

final kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
      colors: [Colors.purple, Colors.orangeAccent, Colors.purple, Colors.pink]),
  borderRadius: BorderRadius.circular(20),
);
