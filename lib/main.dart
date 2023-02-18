import 'package:flutter/material.dart';
import 'package:todo_list_db/screens/all_tasks..dart';
import 'package:todo_list_db/screens/home_page.dart';
import 'package:todo_list_db/screens/login_page.dart';
import 'package:todo_list_db/screens/signup_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'home': (context) => HomePage(),
        'signup': (context) => SignUp(),
        'login': (context) => LoginPage(),
        'tasks':(context) => TaskPage(),
      },
    ),
  );
}
