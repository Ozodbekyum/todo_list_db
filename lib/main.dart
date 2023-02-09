
import 'package:flutter/material.dart';
import 'package:todo_list_db/screens/home_page.dart';
import 'package:todo_list_db/screens/login_page.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        
        'home': (context) => HomePage(),
        // 'tasks': (context) => PageAll(),
        'login':(context) => LoginPage(),
      },
    ),
  );
}
