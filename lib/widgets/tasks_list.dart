import 'package:flutter/material.dart';
import 'package:todo/models/tasks.dart';
import 'package:todo/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  final List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Breads'),
    Task(name: 'Buy Eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkBoxCallBack: (bool value) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
