import 'package:flutter/material.dart';
import 'package:task_app/Model/my_list.dart';
import 'package:task_app/widget/brand_color.dart';
import 'package:task_app/widget/button.dart';

class Calander extends StatefulWidget {
  const Calander({Key? key}) : super(key: key);

  @override
  State<Calander> createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(
                  Icons.calendar_today,
                  color: Colors.white,
                ),
                title: Text(
                  "March,04",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE4E4E6)),
                ),
                trailing: Text(
                  "5 Task Today",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE4E4E6)),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "04",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFE4E4E6)),
                          ),
                          Text(
                            "Thu",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFE4E4E6)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      color: Color.fromARGB(255, 70, 69, 69),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "05",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFE4E4E6)),
                          ),
                          Text(
                            "Fri",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFE4E4E6)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      color: Color.fromARGB(255, 70, 69, 69),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "07",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFE4E4E6)),
                          ),
                          Text(
                            "Sat",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFE4E4E6)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      color: Color.fromARGB(255, 70, 69, 69),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "08",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFE4E4E6)),
                          ),
                          Text(
                            "Sun",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFE4E4E6)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      color: Color.fromARGB(255, 70, 69, 69),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "09",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFE4E4E6)),
                          ),
                          Text(
                            "Mon",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFE4E4E6)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        ccc(),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: ccc(),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 140),
                          child: ccc(),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        ccc(),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Container ccc() {
    return Container(
      height: 120,
      width: 430,
      color: Color.fromARGB(255, 70, 69, 69),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Row(
              children: [
                Text(
                  "Meeting Discord",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE4E4E6)),
                ),
                SizedBox(
                  width: 250,
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 6,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 6,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Discuss with Design Projects",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE4E4E6)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "10AM to 10.30AM",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFE4E4E6)),
            ),
          ),
        ],
      ),
    );
  }
}
