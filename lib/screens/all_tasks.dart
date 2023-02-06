import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AllTask extends StatelessWidget {
  const AllTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            )
          ],
        ));
  }
}
