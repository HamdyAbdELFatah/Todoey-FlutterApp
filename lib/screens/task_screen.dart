import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

import '../Widgets/tasks_list.dart';
import 'add_task.dart';

class TasksScreen extends StatefulWidget {

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(context: context, builder: (context)=> AddTask(),backgroundColor: Colors.transparent);
          }
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(child: Icon(Icons.list,color: Colors.lightBlueAccent,size: 30.0,),
                    backgroundColor: Colors.white,radius: 30.0),
                SizedBox(
                  height: 10.0,
                ),
                Text('Todoey',style: TextStyle(fontSize: 36,fontWeight: FontWeight.w700,color: Colors.white),),
                Text('${Provider.of<TaskData>(context).getTasksCount()} Tasks',style: TextStyle(fontSize: 14,color: Colors.white))
            ],
            ),
          ),
          Expanded(
            child: Container(
              //padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}






