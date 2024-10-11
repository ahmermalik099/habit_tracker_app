import 'package:flutter/material.dart';
import 'package:habit_tracker_app/configs/constants/colors/app_colors.dart';
import 'package:habit_tracker_app/configs/constants/styles/text_styles.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../../view_model/home_view_provider/all_goals_provider.dart';

class ProgressView extends StatefulWidget {
  const ProgressView({super.key});

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  @override
  Widget build(BuildContext context) {
    final goals= Provider.of<GoalProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Your Goals',style: TextStyles.kTextFont.copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 20.0,
                  percent: 0.3,
                  center: Text("30%",style: TextStyles.kTextFont.copyWith(color: AppColors.bodyPrimaryColor,fontWeight: FontWeight.bold,fontSize: 25),),
                  progressColor: AppColors.bodyPrimaryColor,
                  backgroundColor: Colors.grey.withOpacity(0.2),
                ),
              ),
              SizedBox(height: 20,),
              Center(child: Text('✓ 3 of ${goals.goals.length} goals completed',style: TextStyles.kTextFont.copyWith(color: Colors.orange,fontWeight: FontWeight.bold),)),
              Center(child: Text('✘ 4 of ${goals.goals.length} goals completed',style: TextStyles.kTextFont.copyWith(color: Colors.grey,fontWeight: FontWeight.bold),)),
              SizedBox(height: 40,),
              Container(
                height: 300,
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
                          leading: CircularPercentIndicator(
                            radius: 20.0,
                            lineWidth: 3.0,
                            percent: goals.goals[index].completedSteps/goals.goals[index].totalSteps,
                            center: Text('${(goals.goals[index].completedSteps/goals.goals[index].totalSteps*100).toStringAsFixed(0)}%',style: TextStyles.kTextFont.copyWith(color: AppColors.bodyPrimaryColor,fontWeight: FontWeight.bold,fontSize: 10),),
                            progressColor: AppColors.bodyPrimaryColor,
                          ),
                            title: Text(goals.goals[index].title),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,),
                                Text('${goals.goals[index].completedSteps} of ${goals.goals[index].totalSteps} days target'),
                                Text(goals.goals[index].frequency.toString(),style: TextStyle(color: Colors.orange),)
                              ],
                            ),
                          trailing: goals.goals[index].completedSteps==goals.goals[index].totalSteps ? Icon(Icons.check_circle,color: Colors.green,) : Icon(Icons.cancel,color: Colors.red,)
        
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
