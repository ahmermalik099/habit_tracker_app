import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors/app_colors.dart';

//Geogrotesque
class TextStyles {
  /// Example text style
  static TextStyle kDisplayLarge = GoogleFonts.museoModerno(
    fontSize: 40.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteColor,
  );

  static TextStyle kAppBarTitle = TextStyle(
    fontFamily: 'Geogrotesque',
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );

  static TextStyle kTextFont = TextStyle(
    fontFamily: 'Geogrotesque',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryFontColor,
  );
  static TextStyle kHeadingFont = TextStyle(
    fontFamily: 'Geogrotesque',
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryFontColor,
  );

  static TextStyle kLoginHeadings= TextStyle(
    fontFamily: 'ArcaMajora',
    fontSize: 22.sp,
    fontWeight: FontWeight.w900,
    color: AppColors.primaryFontColor,
  );

  static TextStyle kRoboto=GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryFontColor,
  );

  static TextStyle KAttendanceHistoryTableHeading=TextStyle(
    fontFamily: 'Geogrotesque',
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.bodySecondaryColor,
  );

  static TextStyle kTabBarTextStyle = TextStyle(
    fontFamily: 'Geogrotesque',
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryFontColor,
  );

  //used this style in white/ green card
  static TextStyle kCardHeading = TextStyle(
    fontFamily: 'Geogrotesque',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );

  //used this style in white/ green card
  static TextStyle kCardbody = TextStyle(
    fontFamily: 'Geogrotesque',
    fontSize: 28,
    fontWeight: FontWeight.w500,
    color: AppColors.bodySecondaryColor,
  );

  //Sidebar style
  static TextStyle kSidebarText = TextStyle(
    fontFamily: 'Geogrotesque',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryFontColor,
  );

  //style for the button

  static TextStyle kButtonStyle = TextStyle(
    fontFamily: 'Geogrotesque',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );

}
