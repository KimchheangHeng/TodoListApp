import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function toggleTaskDone;
  final Function longPressCallback;

  TaskTile({this.task, this.toggleTaskDone, this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration:
              task.isDone ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: toggleTaskDone,
      ),
      onLongPress: longPressCallback,
    );
  }
}
