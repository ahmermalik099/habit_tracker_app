import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_tracker_app/configs/constants/styles/text_styles.dart';
import 'package:habit_tracker_app/configs/routes/route_names.dart';
import 'package:provider/provider.dart';

import '../../../view_model/home_view_provider/all_goals_provider.dart';

class AllGoals extends StatefulWidget {
  const AllGoals({super.key});

  @override
  State<AllGoals> createState() => _AllGoalsState();
}

class _AllGoalsState extends State<AllGoals> {
  @override
  Widget build(BuildContext context) {
    final goals= Provider.of<GoalProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white70.withOpacity(1),
              spreadRadius: 5,
              blurRadius: 0,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('All Goals', style: TextStyles.kHeadingFont,),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: TextButton(
                      onPressed: (){
                        context.go(RoutesName.allGoalsRoute);
                      },
                      child: Text('View All', style: TextStyles.kTextFont.copyWith(color: Colors.orange),)
                  ),
                ),
              ],
            ),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: goals.goals.take(3).length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white70.withOpacity(1),
                            spreadRadius: 5,
                            blurRadius: 0,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        title: Text(goals.goals[index].title),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LinearProgressIndicator(
                              color: Colors.orange,
                              minHeight: 10,
                              value: goals.goals[index].completedSteps/goals.goals[index].totalSteps,
                            ),
                          SizedBox(height: 5,),
                          Text('${goals.goals[index].completedSteps} of ${goals.goals[index].totalSteps} days target'),
                          Text(goals.goals[index].frequency.toString(),style: TextStyle(color: Colors.orange),)
                          ],
                        )

                      ),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
