
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import './Task.dart';


class TaskData extends ChangeNotifier {


  List<Task> _data = [
    // Task(
    //   name: 'go to the gym',
    //   isDone: false,
    // ),
    // Task(
    //   name: 'go to the ',
    //   isDone: false,
    // )
  ];


  
    UnmodifiableListView<Task> get data{
    
    return UnmodifiableListView(_data);
    
    
  }
  
  void addTask(Task newTask) {
    _data.add(newTask);
    notifyListeners();

  }

  void removeTask(Task task) {
    _data.remove(task);
    notifyListeners();
  }

  //note that we take the object and we change it , remember that task is not a copy of the object but the same reference for that object in the array
  void updateTaskCompletion(Task task){
    task.toggleCompletion();
    notifyListeners();
  }


}
