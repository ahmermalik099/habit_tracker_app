import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_tracker_app/configs/routes/route_names.dart';
import 'package:habit_tracker_app/view/bottom_view_route/bottom_nav_bar.dart';
import 'package:habit_tracker_app/view/home_view/sub_screens/all_daily_tasks_page.dart';
import 'package:habit_tracker_app/view/home_view/sub_screens/all_goals_page.dart';

import '../../view/home_view/home_page.dart';


/// GoRouter configuration
final router = GoRouter(
  initialLocation: RoutesName.initialRoute,
  routes: [
    GoRoute(
      path: RoutesName.initialRoute,
      builder: (context, state) => BottonNavBar(),
    ),
    GoRoute(
      path: RoutesName.homeViewRoute,
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: RoutesName.allDailyTasksRoute,
      builder: (context, state) => AllDailyTasksPage(),
    ),
    GoRoute(
      path: RoutesName.allGoalsRoute,
      builder: (context, state) => AllGoalsPage(),
    )
    // GoRoute(
    //   path: RoutesName.homeViewRoute,
    //   builder: (context, state) {
    //     final showBackButton = state.extra as bool? ?? false;  // Pass flag through `extra`
    //     return HomeScreen(showBackButton);
    //   }
    // ),
    // GoRoute(
    //   path: RoutesName.loginViewRoute,
    //   builder: (context, state) => LoginScreen(),
    // ),
    // GoRoute(
    //   path: RoutesName.inboxViewRoute,
    //   builder: (context, state) => InboxScreen(),
    // ),
    // GoRoute(
    //   path: RoutesName.leaveRequestApprovalViewRoute,
    //   builder: (context, state) {
    //     final extra = state.extra as Map<String, dynamic>?;  // Ensure correct type casting
    //     return LeaveRequestApprovalScreen(
    //       date: extra?['date'] ?? '',
    //       assignedTo: extra?['assignedTo'] ?? '',
    //       employeeName: extra?['employeeName'] ?? '',
    //       workFlow: extra?['workFlow'] ?? '',
    //       id: extra?['id'] ?? '',
    //       startDate: extra?['startDate'] ?? '',
    //       endDate: extra?['endDate'] ?? '',
    //       leaveTypeName: extra?['leaveTypeName'] ?? '',
    //       answers: extra?['answers'] ?? [],
    //     );
    //   },
    // ),
    // GoRoute(
    //     path:RoutesName.attendanceRequestApprovalViewRoute,
    //   builder: (context, state) {
    //     final extra = state.extra as Map<String, dynamic>?;
    //     return AttendanceRequestApprovalScreen(
    //       date: extra?['date'] ?? '',
    //       assignedTo: extra?['assignedTo'] ?? '',
    //       employeeName: extra?['employeeName'] ?? '',
    //       workFlow: extra?['workFlow'] ?? '',
    //       id: extra?['id'] ?? '',
    //       checkIn: extra?['checkIn'] ?? '',
    //       checkOut: extra?['checkOut'] ?? '',
    //       reason: extra?['reason'] ?? '',
    //       comments: extra?['comments'] ?? '',
    //     );
    //   },
    // ),
    // GoRoute(
    //   path: RoutesName.bottomNavBarViewRoute,
    //   builder: (context, state) => BottomNavBar(),
    // ),
    // GoRoute(
    //   path: RoutesName.reportSummaryViewRoute,
    //   builder: (context, state) => ReportScreen(),
    // ),
    // GoRoute(
    //   path: RoutesName.pdfListScreenRoute,  // The route name
    //   builder: (context, state) {
    //     final type = state.extra as String? ?? '';  // If no extra is passed, set default value
    //     final image = state.extra as String? ?? '';
    //     print('type inside the go route: $type');
    //     return PdfListScreen(type: type, image: image);  // Pass the extra to PdfListScreen
    //   },
    // ),
    //
    //

  ],
);
