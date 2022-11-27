import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';
class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<taskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task=taskData.tasks[index];

            return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkBoxCallBack:(bool? value) {
                  taskData.updateTask(task);
                },
              longPressCallBack: (){
                  taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      }
    );
  }
}
