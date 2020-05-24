import 'package:flutter/cupertino.dart';

import 'task.dart';

class TaskData extends ChangeNotifier{
   List<Task> tasks = [
    Task(name: 'study'),
    Task(name: 'work'),
    Task(name: 'play'),
  ];
  addTask(Task value){
    tasks.add(value);
    notifyListeners();
  }
  int getTasksCount(){
    return tasks.length;
  }
   void updateTask(Task task) {
     task.toggleDone();
     notifyListeners();
   }

   void deleteTask(Task task) {
     tasks.remove(task);
     notifyListeners();
   }
}