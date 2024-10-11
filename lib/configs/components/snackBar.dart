import 'package:flutter/material.dart';

import '../constants/colors/app_colors.dart';



class SnackbarMessage {
  static void showSuccessSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(

        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(message, style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontFamily: 'Geogrotesque',fontSize: 12),),
            IconButton(
              color: AppColors.bodyPrimaryColor,
              icon: Icon(Icons.close),
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
            ),
          ],
        ),
        duration: const Duration(seconds: 2),
        backgroundColor: AppColors.whiteColor,
        // padding: EdgeInsets.all(20),
        // shape: StadiumBorder(),
        behavior: SnackBarBehavior.floating,
        //width: 400,
        elevation: 30,

      ),
    );
  }

  static void showFailureSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(

        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(message, style: TextStyle(color: AppColors.bodySecondaryColor,fontWeight: FontWeight.bold,fontFamily: 'Geogrotesque',fontSize: 12),),
            IconButton(
              color: AppColors.bodySecondaryColor,
              icon: Icon(Icons.close),
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
            ),
          ],
        ),
        duration: const Duration(seconds: 2),
        backgroundColor: AppColors.whiteColor,
        behavior: SnackBarBehavior.floating,
        //width: 400,
        elevation: 30,


      ),
    );
  }

}