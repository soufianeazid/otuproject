import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyStyle {
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color premaryColor = Color(0xFFFF3F1A);
  static const Color secondaryColor = Color(0xFFF8F9FB);
  static const Color leghtGray = Color(0xFFACACAC);
  static const Color darkGray = Color(0xFF494949);
  static const Color blackColor = Colors.black;

  static TextStyle pageTitelBlackText = TextStyle(
    color: MyStyle.blackColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle titelBlackText = TextStyle(
    color: MyStyle.blackColor,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle textBlackText = TextStyle(
    color: MyStyle.blackColor,
    fontFamily: 'SourceSansPro',
    fontSize: 20.sp,
    fontWeight: FontWeight.bold
  );
  static TextStyle smallBlackText = TextStyle(
    color: MyStyle.blackColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle smallDarkGrayText = TextStyle(
    color: MyStyle.darkGray,
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle iconDarkGrayText = TextStyle(
    color: MyStyle.darkGray,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle iconPremaryColorText = TextStyle(
    color: MyStyle.premaryColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle smallGrayText = TextStyle(
    color: MyStyle.leghtGray,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle smalldarkGrayText = TextStyle(
    color: MyStyle.darkGray,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
}
