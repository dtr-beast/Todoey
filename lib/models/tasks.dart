import 'package:flutter/foundation.dart';

class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone() {
    this.isDone = !isDone;
  }
}

class TasksListClass extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Breads'),
    Task(name: 'Buy Eggs'),
  ];

  void deleteTask(Task task) {
    tasks.remove(task);
    // tasks.removeAt(taskIndex);
    notifyListeners();
  }

  void addTask(String name) {
    tasks.add(Task(name: name, isDone: false));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
