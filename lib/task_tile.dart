import 'package:flutter/material.dart';

import 'models/tasks.dart';

class TaskTile extends StatefulWidget {
  final Task task;

  const TaskTile({super.key, required this.task});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.task.title,
        style: TextStyle(
          decoration: widget.task.completed ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: widget.task.completed,
        onChanged: (value) {
          setState(() {
            widget.task.completed = value!;
          });
        },
      ),
    );
  }
}
