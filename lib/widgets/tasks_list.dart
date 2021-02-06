import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  final stateChangeCallback;

  TasksList({this.tasks, this.stateChangeCallback});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          task: widget.tasks[index],
          toggleTaskDone: (bool checkboxSate) {
            setState(() {
              widget.tasks[index].toggleDone();
            });

            widget.stateChangeCallback();
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
