import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (BuildContext context, value, Widget child) {
      return ListView.builder(
        itemBuilder: (context, i) {
          return TaskTile(
              text: value.tasks[i].name,
              isChecked: value.tasks[i].isDone,
              onChange: (v) {
                // setState(() {
                value.updateTask(value.tasks[i]);
                // });
              },
              onHoldLong: () {
                // setState(() {
                value.deleteTask(value.tasks[i]);
                // });
              },);
        },
        itemCount: value.getTasksCount(),
      );
    },
    );
  }
}
