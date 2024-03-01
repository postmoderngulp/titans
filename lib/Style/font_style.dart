import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:titans/Style/colors.dart';

abstract class FontStyle {
  static TextStyle titleBoarding = TextStyle(
      color: Colors.white,
      fontSize: 24.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.63.sp);
  static TextStyle title = TextStyle(
      color: Colors.white,
      fontSize: 32.sp,
      fontFamily: 'neueBold',
      wordSpacing: 0.84.sp);
  static TextStyle appBarTitle = TextStyle(
      color: Colors.white,
      fontSize: 18.sp,
      fontFamily: 'neueBold',
      wordSpacing: 0.48.sp);
  static TextStyle subTitleBoarding = TextStyle(
      color: colors.grey,
      fontSize: 18.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.48.sp);
  static TextStyle service = TextStyle(
      color: colors.background,
      fontSize: 18.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.48.sp);
  static TextStyle titleTop = TextStyle(
      color: colors.lightGrey,
      fontSize: 18.sp,
      fontFamily: 'neueBold',
      wordSpacing: 0.48.sp);
  static TextStyle titleMenu = TextStyle(
      color: colors.lightGrey,
      fontSize: 18.sp,
      fontFamily: 'neueMedium',
      wordSpacing: 0.48.sp);
  static TextStyle titleNotificate = TextStyle(
      color: colors.lightGrey,
      fontSize: 14.sp,
      fontFamily: 'neueMedium',
      wordSpacing: 0.37.sp);
  static TextStyle labelMenu = TextStyle(
    color: colors.lightGrey,
    fontSize: 12.sp,
    fontFamily: 'neueRegular',
  );
  static TextStyle label = TextStyle(
      color: colors.labelGrey,
      fontSize: 14.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.37.sp);
  static TextStyle centerInfo = TextStyle(
      color: Colors.white,
      fontSize: 14.sp,
      fontFamily: 'neueBold',
      wordSpacing: 0.37.sp);
  static TextStyle subCenterInfo = TextStyle(
      color: colors.grey,
      fontSize: 14.sp,
      fontFamily: 'neueBold',
      wordSpacing: 0.37.sp);
  static TextStyle mainLabel = TextStyle(
      color: colors.main,
      fontSize: 14.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.37.sp);
  static TextStyle activeRegisterButton = TextStyle(
      color: colors.lightGrey, fontSize: 14.sp, fontFamily: 'neueRegular');
  static TextStyle inActiveRegisterButton = TextStyle(
      color: colors.grey,
      fontSize: 14.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.37.sp);
  static TextStyle buttonBoarding = TextStyle(
      color: colors.dark,
      fontSize: 18.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.48.sp);
  static TextStyle cancel = TextStyle(
      color: Colors.white,
      fontSize: 18.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.48.sp);
  static TextStyle titleHome = TextStyle(
      color: colors.dark,
      fontSize: 18.sp,
      fontFamily: 'neueBold',
      wordSpacing: 0.48.sp);
  static TextStyle titleBanner = TextStyle(
      color: colors.dark,
      fontSize: 16.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.42.sp);
  static TextStyle priceBanner = TextStyle(
      color: colors.main,
      fontSize: 16.sp,
      fontFamily: 'neueBold',
      wordSpacing: 0.42.sp);
  static TextStyle lowPriceBanner = TextStyle(
      color: colors.red,
      fontSize: 16.sp,
      fontFamily: 'neueBold',
      wordSpacing: 0.42.sp);
  static TextStyle nameCurrency = TextStyle(
      color: colors.background,
      fontSize: 14.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.37.sp);
  static TextStyle subTitleBanner = TextStyle(
      color: colors.labelGrey,
      fontSize: 14.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.37.sp);
  static TextStyle percentBanner = TextStyle(
      color: colors.main,
      fontSize: 12.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.32.sp);
  static TextStyle lowPercentBanner = TextStyle(
      color: colors.red,
      fontSize: 12.sp,
      fontFamily: 'neueRegular',
      wordSpacing: 0.32.sp);
}
