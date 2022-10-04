import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../Models/TaskData.dart';
import '../Models/Task.dart';

class AddTaskSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String newTask = '';

    return SafeArea(
      child: Container(
        color: Color.fromRGBO(117, 117, 117, 1),
        child: Container(
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Add Task',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    TextField(
                      autofocus: true,
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(

                          enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 5),
                      )),
                      onChanged: (value) {
                        newTask = value;
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                        onPressed: () {

                          Provider.of<TaskData>(context,listen:false).addTask(Task(name:newTask,isDone:false));
                          Navigator.pop(context);
                        },
                        color: Colors.lightBlueAccent,
                        padding: EdgeInsets.symmetric(vertical: 17),
                        child: Text('Add',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )))
                  ]),
            )),
      ),
    );
  }
}
