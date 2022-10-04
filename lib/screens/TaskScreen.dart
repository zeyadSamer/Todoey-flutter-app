import 'package:flutter/material.dart';
import 'package:todoey/Models/TaskData.dart';
import 'package:todoey/screens/AddTaskSheet.dart';
import 'package:todoey/TaskList.dart';
import '../Models/Task.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<TaskData>(
      builder:(context,taskData,child)=> Scaffold(
          backgroundColor: Colors.blueAccent,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskSheet()),
                ),
              );
            },
            backgroundColor: Colors.blueAccent,
          ),
          body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            child: Icon(
                              Icons.list,
                              color: Colors.blueAccent,
                              size: 40,
                            ),
                            radius: 30,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Todoey',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text('${taskData.data.length.toString()} tasks',
                              style: TextStyle(color: Colors.white, fontSize: 18))
                        ]),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                      child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: TaskList(),
                  ))
                ]),
          )),
    );
  }
}
