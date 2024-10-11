//  import 'package:flutter/material.dart';
//
// class AppColors {
//   static const Color blackColor = Color.fromRGBO(0, 0, 0, 1);
//   static const Color whiteColor = Color(0xFFFFFFFF);
//   static const Color pinkColor = Color.fromRGBO(228, 0, 119, 1);
//   static const Color greenColor = Color.fromRGBO(143, 195, 31, 1);
//   static const Color greyColor = Color.fromRGBO(135, 135, 135, 1);
//   static const Color lightgreyColor = Color.fromRGBO(240, 242, 246, 1);
//   //static const Color greyColor = Color.fromRGBO(171, 171, 171, 1);
//   static const Color lightGreenColor=Color.fromRGBO(143, 195, 31, 0.5);
//   static const Color lightPinkColor=Color.fromRGBO(228, 0, 119, 0.5);
//
// }
 import 'package:flutter/material.dart';

 class AppColors {
   //static const Color greyColor = Color.fromRGBO(171, 171, 171, 1);
   static const Color checckInColor=Color.fromRGBO(143, 195, 31, 0.5);
   static const Color checkOutColor=Color.fromRGBO(228, 0, 119, 0.5);

   // new colors breakdown
   static const Color bodyPrimaryColor = Colors.orange; //  green color in app
   static const Color bodySecondaryColor = Colors.lightGreen;//pink color in app
   static const Color primaryFontColor = Color.fromRGBO(0, 0, 0, 1);
   static const Color appBarColor = Color.fromRGBO(143, 195, 32, 1);//appbar colors
   static const Color bottomBarColor = Color.fromRGBO(228, 0, 120, 1);//navbar color
   static const Color whiteColor = Color(0xFFFFFFFF);
   static const Color greyColor = Color.fromRGBO(135, 135, 135, 1);
   static const Color lightgreyColor = Color.fromRGBO(240, 242, 246, 1);



 }


class ConfigurableColors {
  static Color checkInColor = Color.fromRGBO(143, 195, 31, 0.5);
  static Color checkOutColor = Color.fromRGBO(228, 0, 119, 0.5);

  static Color bodyPrimaryColor = Color.fromRGBO(143, 195, 31, 1);
  static Color bodySecondaryColor = Color.fromRGBO(228, 0, 119, 1);
  static Color primaryFontColor = Color.fromRGBO(0, 0, 0, 1);
  static Color appBarColor = Color.fromRGBO(143, 195, 32, 1);
  static Color bottomBarColor = Color.fromRGBO(228, 0, 120, 1);
  static Color whiteColor = Color(0xFFFFFFFF);
  static Color greyColor = Color.fromRGBO(135, 135, 135, 1);
  static Color lightGreyColor = Color.fromRGBO(240, 242, 246, 1);

  // Update colors dynamically
  static void updateColors(Map<String, String> colors) {
    checkInColor = _fromHex(colors['checkInColor'] ?? '#8FC31F80');
    checkOutColor = _fromHex(colors['checkOutColor'] ?? '#E4007780');
    bodyPrimaryColor = _fromHex(colors['bodyPrimaryColor'] ?? '#8FC31F');
    bodySecondaryColor = _fromHex(colors['bodySecondaryColor'] ?? '#E40077');
    primaryFontColor = _fromHex(colors['primaryFontColor'] ?? '#000000');
    appBarColor = _fromHex(colors['appBarColor'] ?? '#8FC31F');
    bottomBarColor = _fromHex(colors['bottomBarColor'] ?? '#E40078');
    whiteColor = _fromHex(colors['whiteColor'] ?? '#FFFFFF');
    greyColor = _fromHex(colors['greyColor'] ?? '#878787');
    lightGreyColor = _fromHex(colors['lightGreyColor'] ?? '#F0F2F6');
  }

  // Convert hex string to Color
  static Color _fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
