import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../../configs/constants/colors/app_colors.dart';
import '../constants/assets/images_path.dart';

class DatePickerContainer extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final VoidCallback onPressed;

  const DatePickerContainer({
    Key? key,
    required this.title,
    required this.controller,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 163,
      margin: EdgeInsets.only(left: 10, top: 20),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.bodyPrimaryColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Geogrotesque',
                  color: AppColors.bodyPrimaryColor
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextField(
              textAlign: TextAlign.start,
              controller: controller,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                fontFamily: 'Geogrotesque',
              ),
              readOnly: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'YYYY-MM-DD',
                suffixIcon: IconButton(
                  icon: SvgPicture.asset(
                    ImagesPath.calendar,
                  ),
                  color: AppColors.bodySecondaryColor,
                  onPressed: onPressed,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
