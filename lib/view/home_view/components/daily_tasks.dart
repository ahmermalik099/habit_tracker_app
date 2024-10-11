import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_tracker_app/configs/constants/styles/text_styles.dart';
import 'package:habit_tracker_app/configs/routes/custom_routes.dart';
import 'package:habit_tracker_app/configs/routes/route_names.dart';
import 'package:provider/provider.dart';

import '../../../view_model/home_view_provider/daily_tasks_provider.dart';


class DailyTasks extends StatefulWidget {
  const DailyTasks({super.key});

  @override
  State<DailyTasks> createState() => _DailyTasksState();
}

class _DailyTasksState extends State<DailyTasks> {
  @override
  Widget build(BuildContext context) {
    final dailyTasksProvider = Provider.of<DailyTaskProvider>(context);
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
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text('Daily Tasks',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: TextButton(
                      child: Text('View All',
                        style: TextStyles.kTextFont.copyWith(color: Colors.orange),
                      ),
                      onPressed: (){
                        context.go(RoutesName.allDailyTasksRoute);
                      }
                  ),
                ),
              ],
            ),
            Container(
              height: 170,
              child: ListView.builder(
                itemCount: dailyTasksProvider.habits.take(3).length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: dailyTasksProvider.habits[index].isCompleted ? Colors.green[50] : null,
                        ),
                        child: ListTile(
                          tileColor: dailyTasksProvider.habits[index].isCompleted ? Colors.green[50] : null,

                          title: Text(
                              dailyTasksProvider.habits[index].name,
                            style: TextStyles.kTextFont.copyWith(
                              color: dailyTasksProvider.habits[index].isCompleted ? Colors.lightGreen : Colors.black,
                            )
                          ),
                          trailing: Checkbox(
                            value: dailyTasksProvider.habits[index].isCompleted,
                            checkColor: Colors.white,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              dailyTasksProvider.toggleCompletion(index);
                            },
                          ),
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
