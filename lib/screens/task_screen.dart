import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';
import 'add_task_screen.dart';
import 'package:todo/widgets/task_list.dart';
import 'package:todo/models/task.dart';
class TaskScreen extends StatelessWidget {

  // Widget buildBottomSheet(BuildContext context)=> Container();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder:(context)=>
              AddTaskScreen(),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child:Icon(Icons.add),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(child: Icon(Icons.list,size: 30.0,),
                backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('To-do-List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700
                ),
                ),
                Text('${Provider.of<taskData>(context).taskCount} tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
                ),

              ],
            ),
          ),
          Expanded(


            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)
                  )
              ),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}



