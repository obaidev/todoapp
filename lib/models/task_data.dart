import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoapp/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
