import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 30.0,
          ),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText) {
            newTaskTitle = newText;
          },
        ),
        TextButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlueAccent)),
          onPressed: () {
            Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
            Navigator.pop(context);
          },
          child: const Text(
            'Add',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
