import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller = TextEditingController();
  String data() {
    String date = '';
    String day = DateTime.now().day.toString();
    String month = DateTime.now().month.toString();
    String hour = DateTime.now().hour.toString();
    String minute = DateTime.now().minute.toString();
    if (month == '1') {
      date += 'January' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    } else if (month == '2') {
      date += 'February' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    } else if (month == '3') {
      date += 'March' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    } else if (month == '4') {
      date += 'April' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    } else if (month == '5') {
      date += 'May' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    } else if (month == '6') {
      date += 'June' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    } else if (month == '7') {
      date += 'July' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    } else if (month == '8') {
      date += 'August' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    } else if (month == '9') {
      date += 'September' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    } else if (month == '10') {
      date += 'October' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    } else if (month == '11') {
      date += 'November' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    } else {
      date += 'December' + ' ' + day + ',' + ' ' + hour + ':' + minute;
    }
    return '' + date;
  }

  String ok = '                         ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'open');
              },
              icon: Icon(
                Icons.clear,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          ok + 'New Task',
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' What are you planning?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      cursorHeight: 40,
                      maxLines: 7,
                      controller: _controller,
                      decoration: const InputDecoration(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.date_range,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(data()),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        ),
                        Text('   ' + 'Add note')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.category,
                          color: Colors.grey,
                        ),
                        Text('  ' + 'Category')
                      ],
                    )
                  ]),
            ),
            const SizedBox(
              height: 300,
            ),
            Container(
              height: 90,
              width: 700,
              child: ElevatedButton(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    final counter = prefs.getInt('counter') ?? 0;

                    print(counter.runtimeType);
                  },
                  child: Text('Create',style: TextStyle(fontSize: 25),)),
            ),
          ],
        ),
      ),
    );
  }
}
