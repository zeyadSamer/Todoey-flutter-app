import 'package:flutter/material.dart';
import './TaskItem.dart';
import './Models/Task.dart';
import './Models/TaskData.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {




  @override
  Widget build(BuildContext context) {




    return Consumer<TaskData>(
      builder:(context,taskData,child)=> ListView.builder(itemBuilder:(context,index){

        Task task =taskData.data[index];
        return TaskItem(name:task.name,
          isChecked: task.isDone,
          toggleCompletion:(checkState){

            taskData.updateTaskCompletion(task);


          },
          deleteTask:(){

          taskData.removeTask(task);


          }


        );


      },
        itemCount: taskData.data.length,


      ),
    );
  }
}
