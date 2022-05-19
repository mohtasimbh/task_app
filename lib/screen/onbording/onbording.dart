import 'package:flutter/material.dart';
import 'package:task_app/screen/onbording/onbording1.dart';
import 'package:task_app/screen/onbording/onbording2.dart';
import 'package:task_app/screen/onbording/onbording3.dart';

class Onbording extends StatelessWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Onbording1(),
          Onbording2(),
          Onbording3(),
        ],
      ),
    );
  }
}
