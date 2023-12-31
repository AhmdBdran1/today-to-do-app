import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks=[];


  void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.doneChane();
    notifyListeners();
  }


  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }

}