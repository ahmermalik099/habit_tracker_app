import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_tracker_app/view_model/home_view_provider/all_goals_provider.dart';
import 'package:habit_tracker_app/view_model/home_view_provider/daily_tasks_provider.dart';
import 'package:habit_tracker_app/view_model/home_view_provider/home_view_provider.dart';
import 'package:provider/provider.dart';

import 'configs/routes/custom_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (_) => ColorProvider()),
        ChangeNotifierProvider(create: (_) => DailyTaskProvider()),
        ChangeNotifierProvider(create: (_) => GoalProvider()),



      ],
      child: ScreenUtilInit(
          designSize: const Size(390, 844),

          builder: (BuildContext context, child) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Habit Tracker',
              routerConfig: router,
            );
          }),
    );
  }
}


