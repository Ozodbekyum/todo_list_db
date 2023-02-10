import 'package:flutter/material.dart';
import 'package:todo_list_db/screens/home_page.dart';
import 'package:todo_list_db/screens/login_page.dart';
import 'package:todo_list_db/screens/signup_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'signup': (context) => SignUp(),
        'login': (context) => LoginPage(),
      },
    ),
  );
}
