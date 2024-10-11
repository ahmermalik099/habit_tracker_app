import 'package:flutter/material.dart';

import '../../models/goals_model.dart';

class GoalProvider with ChangeNotifier {
  List<Goal> _goals = [
    Goal(title: 'Finish 5 Philosophy Books', completedSteps: 7, totalSteps: 7, frequency: 'Everyday'),
    Goal(title: 'Sleep before 11 pm', completedSteps: 7, totalSteps: 7, frequency: 'Everyday'),
    Goal(title: 'Finish reading The Hobbit', completedSteps: 3, totalSteps: 7, frequency: 'Everyday'),
    Goal(title: 'Complete 10,000 Steps', completedSteps: 10, totalSteps: 10, frequency: 'Everyday'),
    Goal(title: 'Learn Flutter Development', completedSteps: 2, totalSteps: 5, frequency: 'Weekly'),
    Goal(title: 'Drink 8 Glasses of Water', completedSteps: 6, totalSteps: 8, frequency: 'Everyday'),
    Goal(title: 'Meditate for 20 Minutes', completedSteps: 6, totalSteps: 7, frequency: 'Everyday'),
  ];

  List<Goal> get goals => _goals;

  void updateGoalProgress(int index, int newProgress) {
    _goals[index] = Goal(
      title: _goals[index].title,
      completedSteps: newProgress,
      totalSteps: _goals[index].totalSteps,
      frequency: _goals[index].frequency,
    );
    notifyListeners();
  }
}
