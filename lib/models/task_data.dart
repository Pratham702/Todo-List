import 'dart:collection';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'task.dart';

class taskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy kur'),
    Task(name: 'Buy Chips'),
    Task(name: 'Do your homework'),
  ];
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get taskCount{
    return _tasks.length;
  }
  void addTask(String newTaskTitle){
    final task= Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}
