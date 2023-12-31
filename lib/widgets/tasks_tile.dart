import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget{
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?)  checkBoxChange;
  final void Function()  listTileDelete;

  TaskTile({required this.isChecked,required this.taskTitle,required this.checkBoxChange, required this.listTileDelete});

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
        style: TextStyle(decoration: isChecked? TextDecoration.lineThrough: null),),
      trailing:Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkBoxChange,
      ),
      onLongPress: listTileDelete,
    );
  }
}


//setState(() {
//           isChecked=newValue!;
//
//