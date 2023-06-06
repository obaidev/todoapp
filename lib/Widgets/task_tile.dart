import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      required this.checkboxCallback,
      required this.longPressCallback});

  final bool isChecked;
  final String taskTitle;
  final VoidCallback longPressCallback;
  final Function checkboxCallback;

  // final Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: isChecked
            ? const TextStyle(decoration: TextDecoration.lineThrough)
            : const TextStyle(decoration: TextDecoration.none),
      ),
      trailing: Checkbox(
        onChanged: (value) {
          checkboxCallback(value);
        },
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
      ),
    );
  }
}
