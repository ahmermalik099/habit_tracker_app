import 'package:flutter/material.dart';
import 'package:habit_tracker_app/configs/constants/colors/app_colors.dart';
import 'package:habit_tracker_app/configs/constants/styles/text_styles.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class HomeScreenBanner extends StatefulWidget {
  const HomeScreenBanner({super.key});

  @override
  State<HomeScreenBanner> createState() => _HomeScreenBannerState();
}

class _HomeScreenBannerState extends State<HomeScreenBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(255, 164, 80, 1),
            Color.fromRGBO(255, 92, 0, 1),
            ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
      ),
      height: 150,
      width: double.infinity,
      child: Row(
        children: [
          CircularPercentIndicator(
            radius: 65.0,
            lineWidth: 20.0,
            percent: 0.7,
            center: Text("70%",style: TextStyles.kTextFont.copyWith(color: AppColors.whiteColor),),
            progressColor: Colors.white,
            backgroundColor: Colors.white60,
          ),
          SizedBox(width: 30,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('3 of 5 habits',style: TextStyles.kTextFont.copyWith(color: AppColors.whiteColor,fontWeight: FontWeight.w600,fontSize: 20),),
              Text('completed today',style: TextStyles.kTextFont.copyWith(color: AppColors.whiteColor,fontSize: 15),),
            ],
          )
        ],
      ),
    );
  }
}
