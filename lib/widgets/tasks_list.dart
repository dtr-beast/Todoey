import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/tasks.dart';
import 'package:todo/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksListClass>(builder: (context, taskListData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskListData.tasks[index].name,
            isChecked: taskListData.tasks[index].isDone,
            checkBoxCallBack: (bool value) {
              setState(() {
                taskListData.tasks[index].toggleDone();
              });
            },
          );
        },
        itemCount: widget.tasks.length,
      );
    });
  }
}
