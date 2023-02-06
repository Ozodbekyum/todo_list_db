import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_list_db/models/model.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final List<Change> items = [
    Change(
        icon: Icon(
          Icons.document_scanner,
          color: Colors.blue,
        ),
        title: 'All',
        numbers: 14),
    Change(
        icon: Icon(
          Icons.work,
          color: Colors.orange,
        ),
        title: 'Work',
        numbers: 14),
    Change(
        icon: Icon(
          Icons.music_note,
          color: Colors.orange,
        ),
        title: 'Music',
        numbers: 14),
    Change(
        icon: Icon(
          Icons.travel_explore,
          color: Colors.green,
        ),
        title: 'Travel',
        numbers: 14),
    Change(
        icon: Icon(
          Icons.book,
          color: Colors.pink,
        ),
        title: 'Study',
        numbers: 14),
    Change(
        icon: Icon(
          Icons.home,
          color: Colors.orange,
        ),
        title: 'Home',
        numbers: 14),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'addTask');
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'tasks');
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    items[index].icon,
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Text(
                        items[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ),
                    Text('4 Tasks'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
