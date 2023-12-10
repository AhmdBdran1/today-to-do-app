import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              onPressed: (){},
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
