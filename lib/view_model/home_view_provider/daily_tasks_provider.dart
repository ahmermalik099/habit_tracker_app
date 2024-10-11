import 'package:flutter/material.dart';

import '../../models/daliy_tasks_model.dart';

class DailyTaskProvider with ChangeNotifier {
  List<Habit> _habits = [
    Habit(name: 'Meditation'),
    Habit(name: 'Reading'),
    Habit(name: 'Swimming'),
    Habit(name: 'Journaling'),
    Habit(name: 'Running'),
  ];

  List<Habit> get habits => _habits;

  void toggleCompletion(int index) {
    _habits[index] = Habit(
      name: _habits[index].name,
      isCompleted: !_habits[index].isCompleted,
    );
    notifyListeners();
  }
}
