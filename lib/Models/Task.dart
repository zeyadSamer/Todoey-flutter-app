
import 'package:flutter/cupertino.dart';

class Task extends ChangeNotifier{

  String name;
  bool isDone;

  Task({required this.name, required this.isDone});

  void toggleCompletion(){
    isDone=!isDone;


  }




}