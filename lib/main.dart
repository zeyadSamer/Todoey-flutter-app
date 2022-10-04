import 'package:flutter/material.dart';
import 'package:todoey/Models/TaskData.dart';
import'./screens/TaskScreen.dart';
import './Models/TaskData.dart';
import'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context)=>TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        home:TaskScreen()),
    );
  }
}
