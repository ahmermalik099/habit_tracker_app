import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_tracker_app/configs/routes/route_names.dart';
import 'package:provider/provider.dart';

import '../../../configs/constants/styles/text_styles.dart';
import '../../../view_model/home_view_provider/daily_tasks_provider.dart';


class AllDailyTasksPage extends StatefulWidget {
  const AllDailyTasksPage({super.key});

  @override
  State<AllDailyTasksPage> createState() => _AllDailyTasksPageState();
}

class _AllDailyTasksPageState extends State<AllDailyTasksPage> {
  @override
  Widget build(BuildContext context) {
    final dailyTasksProvider = Provider.of<DailyTaskProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            context.go(RoutesName.initialRoute);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Your Daily Habits'),
      ),
      body: Container(
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
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('Daily Tasks',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 200,
              child: ListView.builder(
                itemCount: dailyTasksProvider.habits.length,
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
                        trailing: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                         mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              value: dailyTasksProvider.habits[index].isCompleted,
                              checkColor: Colors.white,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                dailyTasksProvider.toggleCompletion(index);
                              },
                            ),
                            PopupMenuButton<String>(
                              onSelected: (String result) {
                                setState(() {
                                  // Handle menu item selection here
                                  print(result);
                                });
                              },
                              icon: Icon(Icons.more_vert), // Three-dot icon (vertical ellipsis)
                              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: 'Edit',
                                  child: Text('Edit'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Delete',
                                  child: Text('Delete'),
                                ),
                              ],
                            ),
                          ],
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
