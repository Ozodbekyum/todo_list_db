import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/todo.dart';

Future getTask(String pass,String user) async {
  Uri url = Uri.parse('https://diyorbekmajidov.pythonanywhere.com/get/');

  // var data = jsonEncode(todo.toJson());
  
  final response = await http.post(
    url,
    headers: {'Content-type': 'application/json'},
    body: jsonEncode(
      {
        'password': pass,
        "username":user,
        // 'completed': todo.completed,
      },
    ),
  );
  print(response.body);
  if (response.statusCode == 200) {
    print('Todo added');
  } else {
    throw Exception('Failed to add todo');
  }
}