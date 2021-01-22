import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/tasks.dart';
import 'package:todo/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksListClass>(builder: (context, taskListData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskListData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkBoxCallBack: (bool value) {
              taskListData.updateTask(task);
            },
          );
        },
        itemCount: taskListData.tasks.length,
      );
    });
  }
}
