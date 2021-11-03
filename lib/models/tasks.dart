import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'task.dart';

class Tasks extends ChangeNotifier {
  List<Task> _list = [];

  void add(Task task) {
    _list.add(task);
    notifyListeners();
  }

  void changeState(index) {
    _list[index].toggleIsDone();
    notifyListeners();
  }

  void remove(Task task) {
    _list.remove(task);
    notifyListeners();
  }

  List<Task> get list {
    return _list;
  }

  int get tasksCount {
    return _list.length;
  }
}
