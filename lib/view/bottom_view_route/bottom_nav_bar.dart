// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_tracker_app/view/home_view/home_page.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../configs/constants/assets/images_path.dart';
import '../../configs/constants/colors/app_colors.dart';
import '../progress_view/progress_view.dart';
import '../settings_view/settings_page.dart';



class BottonNavBar extends StatefulWidget {
  const BottonNavBar({key,});

  @override
  State<BottonNavBar> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ProgressView(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        selectedColorOpacity: 0.8,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (i) {
          setState(() {
            _currentIndex = i;
          });
        },

        items: [

          /// Home
          SalomonBottomBarItem(
            unselectedColor: AppColors.bodyPrimaryColor,
            selectedColor: AppColors.bodyPrimaryColor,
            icon: Icon(Icons.home_outlined),
            title: Text("Home",style: TextStyle(color: Colors.white),),
            activeIcon: Icon(Icons.home_outlined,color: Colors.white,),
          ),          /// Inbox
          SalomonBottomBarItem(
            unselectedColor: AppColors.bodyPrimaryColor,
            icon: Icon(Icons.show_chart_outlined),
            title: Text("Progress",style: TextStyle(color: Colors.white),),
            selectedColor: AppColors.bodyPrimaryColor,
            activeIcon: Icon(Icons.show_chart_outlined,color: Colors.white,),
          ),
          /// Attendance
          SalomonBottomBarItem(
            unselectedColor: AppColors.bodyPrimaryColor,
            icon: Icon(Icons.person_2_outlined),
            title: Text("Profile",style: TextStyle(color: Colors.white),),
            selectedColor: AppColors.bodyPrimaryColor,
            activeIcon: Icon(Icons.person_2_outlined,color: Colors.white,),
          ),
          /// Leave

        ],

      )
    );
  }
}