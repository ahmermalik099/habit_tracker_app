import 'package:flutter/material.dart';
import 'package:habit_tracker_app/configs/components/snackBar.dart';
import 'package:habit_tracker_app/view/home_view/components/daily_tasks.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../configs/constants/styles/text_styles.dart';
import 'components/all_goals_widget.dart';
import 'components/banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String formattedDate = DateFormat('E, d MMM yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$formattedDate',style: TextStyles.kTextFont,),
      ),
      body: Consumer(
        builder: (context, watch, child) {
          return Stack(
            children:[

              SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text('Hello there!',style: TextStyles.kHeadingFont,),
                      ),
                      HomeScreenBanner(),
                      DailyTasks(),
                      AllGoals(),
                    ]
                ),
              ),
              Positioned(
                  bottom: 5,
                  right: 5,
                  child: FloatingActionButton(
                    backgroundColor: Colors.orange,
                    onPressed: (){
                      addTask();
                    },
                    child: Icon(Icons.add),
                  )
              ),
            ]
          );
        },
      ),
    );
  }

  void addTask() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            height: 300,
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text('Create A New Habit', style: TextStyles.kHeadingFont,),
                  SizedBox(height: 10,),
                  Text('Habit Name',style: TextStyles.kTextFont,),
                  //text field for the habit name
                  TextField(
                    decoration: InputDecoration(
                      
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.orange.withOpacity(0.3), // Color when the TextField is focused
                          width: 2.0, // Width of the border when focused
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.3), // Color when the TextField is not focused
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Period',style: TextStyles.kTextFont,),
                      //dropdown for the period
                      DropdownButton(
                        borderRadius: BorderRadius.circular(10),
                        style: TextStyles.kTextFont,
                        hint: Text('Select Period'),
                        items: ['1 Month (30 Days)', '1 Week (7 Days)', '1 Day'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ],
                  ),
                  //row for the habit type
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Habit Type',style: TextStyles.kTextFont,),
                      //dropdown for the habit type
                      DropdownButton(

                        autofocus: true,
                        focusColor: Colors.orange,
                        focusNode: FocusNode(),
                        borderRadius: BorderRadius.circular(10),

                        style: TextStyles.kTextFont,
                        hint: Text('Select Habit Type'),
                        items: ['Everyday', 'Weekly', 'Monthly'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                    
                      style: ButtonStyle(
                        fixedSize: WidgetStateProperty.all(Size(150, 30)),
                        backgroundColor: WidgetStateProperty.all(Colors.orange),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {
                        SnackbarMessage.showSuccessSnackBar(context, 'New Habit Added Successfully');
                        Navigator.of(context).pop(); // Close the dialog
                      },
                      child: Text('Add Habit',style: TextStyles.kButtonStyle,),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

}
