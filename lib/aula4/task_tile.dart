import 'package:flutter/material.dart';
import 'package:todo_app/aula4/task.dart';

class TaskTile extends StatefulWidget {
  final Task task;

  const TaskTile({super.key, required this.task});

  @override
  State<StatefulWidget> createState() {
    return _TaskTileState();
  }
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        widget.task.title,
        style: TextStyle(
          decoration: widget.task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      value: widget.task.isDone,
      onChanged: (bool? value) {
        setState(() {
          widget.task.isDone = value ?? false;
        });
      },
    );
  }
}
