import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;

  AddTaskScreen({this.addTaskCallBack});

  @override
  Widget build(BuildContext context) {
    String taskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Buy Milk..'),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (String text) {
                taskTitle = text;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              onPressed: () {
                addTaskCallBack(taskTitle);
              },
              color: Colors.lightBlueAccent,
              minWidth: 300.0,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
