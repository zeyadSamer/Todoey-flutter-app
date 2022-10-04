import 'package:flutter/material.dart';
import'package:provider/provider.dart';
import './Models/Task.dart';
class TaskItem extends StatelessWidget {

  final void Function(bool?) toggleCompletion;

  final bool isChecked;
  final String name;
  final void Function() deleteTask;

   TaskItem({required this.name, required this.isChecked,required this.toggleCompletion,required this.deleteTask});



  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress:(){
          deleteTask();


          },
        title:Text(name,

          style:TextStyle(
            decoration: isChecked? TextDecoration.lineThrough:null

          )


        ),
        trailing: Checkbox(
          value:isChecked,
          onChanged:toggleCompletion,
        ));

  }
}

