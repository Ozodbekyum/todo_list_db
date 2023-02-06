import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_db/screens/add_task_page.dart';
import 'package:todo_list_db/screens/all_tasks.dart';
import 'package:todo_list_db/screens/task_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'open',
      routes: {
        'addTask': (context) => MyApp(),
        'open': (context) => TaskPage(),
        'tasks': (context) => AllTask(),
      },
    ),
  );
}
