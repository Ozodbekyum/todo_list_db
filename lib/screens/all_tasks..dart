import 'package:flutter/material.dart';

import 'package:todo_list_db/models/model.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final List<Change> items = [
    Change(
        icon: const Icon(
          Icons.document_scanner,
          color: Colors.blue,
        ),
        title: 'All',
        numbers: 14),
    Change(
        icon: const Icon(
          Icons.work,
          color: Colors.orange,
        ),
        title: 'Work',
        numbers: 14),
    Change(
        icon: const Icon(
          Icons.music_note,
          color: Colors.orange,
        ),
        title: 'Music',
        numbers: 14),
    Change(
        icon: const Icon(
          Icons.travel_explore,
          color: Colors.green,
        ),
        title: 'Travel',
        numbers: 14),
    Change(
        icon: const Icon(
          Icons.book,
          color: Colors.pink,
        ),
        title: 'Study',
        numbers: 14),
    Change(
        icon: const Icon(
          Icons.home,
          color: Colors.orange,
        ),
        title: 'Home',
        numbers: 14),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pushNamed(context, 'addTask');
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '  Lists',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
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
                    decoration: const BoxDecoration(
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
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ),
                          const Text('4 Tasks'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
