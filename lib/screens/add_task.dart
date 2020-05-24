import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class AddTask extends StatelessWidget {

  String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(fontSize: 22, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              onChanged: (value) {
                taskTitle = value;
              },
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                child: Text('Add',
                    style: TextStyle(fontSize: 14, color: Colors.white)),
                color: Colors.lightBlueAccent,
                onPressed: () {

                  Provider.of<TaskData>(context).addTask(Task(name: taskTitle));
                  Navigator.pop(context);

                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
