import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {
  final Function addNewTask;

  const AddTaskScreen({super.key, required this.addNewTask});

  @override
  Widget build(BuildContext context) {
    String? newTextTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',style: TextStyle(
            fontSize: 30,
            color: Colors.teal[400],
            fontWeight: FontWeight.bold,

          ),
          textAlign: TextAlign.center,),
          TextField(
            onChanged: (newText){
               newTextTitle=newText;
            },
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              labelText: 'Enter new task',
              labelStyle: TextStyle(color: Colors.grey),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal[400]!)
              ),
            ),
          ),

          SizedBox(height: 30,),
          TextButton(
              onPressed: (){
                if(newTextTitle!=""&&newTextTitle!=null){
                Provider.of<TaskData>(context,listen: false).addTask(newTextTitle!);
                Navigator.pop(context);
                }
              },
              child: Text('Add',),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
              primary: Colors.white,
              ),),
        ],
      ),
    );
  }
}
