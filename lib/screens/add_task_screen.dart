import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task.dart';
import 'package:todo/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   late String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,

            ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
              newTaskTitle=newText;
              },
            ),

            FlatButton(

              color: Colors.lightBlueAccent,
                onPressed: (){
                  Provider.of<taskData>(context,listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
            },
                child:
            Text('Add',
            style: TextStyle(
              color: Colors.white
            ),)
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white ,
          borderRadius: BorderRadius.only(
              topRight:Radius.circular(20.0),
              topLeft: Radius.circular(20.0)
          ),

        ),
      ),

    );
  }
}
