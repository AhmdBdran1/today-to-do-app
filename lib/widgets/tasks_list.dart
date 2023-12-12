import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task_data.dart';
import 'package:todaydo_app/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';



class TasksList extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Consumer<TaskData>(

      builder: (BuildContext context, TaskData value, Widget? child) {
        return ListView.builder(
          itemCount: Provider.of<TaskData>(context).tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked:value.tasks[index].isDone ,
                taskTitle: value.tasks[index].name,
                checkBoxChange:(newValue){
                  value.updateTask(value.tasks[index]);
                },
                listTileDelete:(){
                  value.deleteTask(value.tasks[index]);
                } ,

            );
          },);
      },

    );
    // return ListView(.

    //   children: [
    //     //TaskTile(isChecked: tasks[0].isDone, taskTitle: tasks[0].name),
    //   ],
    // );
  }
}
