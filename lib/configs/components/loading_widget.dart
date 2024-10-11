import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors/app_colors.dart';


class LoadingWidget extends StatelessWidget {
  final double size;
  const LoadingWidget({super.key, this.size = 36.0});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          strokeWidth: 4.0,
          color: AppColors.bodyPrimaryColor,
        ),
      ),
    );
  }
}
