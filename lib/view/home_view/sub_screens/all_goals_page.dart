import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_tracker_app/configs/constants/colors/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../configs/constants/styles/text_styles.dart';
import '../../../configs/routes/route_names.dart';
import '../../../view_model/home_view_provider/all_goals_provider.dart';


class AllGoalsPage extends StatefulWidget {
  const AllGoalsPage({super.key});

  @override
  State<AllGoalsPage> createState() => _AllGoalsPageState();
}

class _AllGoalsPageState extends State<AllGoalsPage> {
  @override
  Widget build(BuildContext context) {
    final goals= Provider.of<GoalProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            context.go(RoutesName.initialRoute);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('All Goals'),
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
              child: Text('All Goals', style: TextStyles.kHeadingFont,),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 150,
              child: ListView.builder(
                itemCount: goals.goals.length,
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
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(goals.goals[index].title),
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
