import 'package:flutter/material.dart';
import 'package:task_app/Model/my_list.dart';
import 'package:task_app/screen/tab_bar/projectdetails.dart';
import 'package:task_app/widget/brand_color.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 16),
                height: 65,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    ProjectTaskCard(
                      clr: Colors.purple,
                      number: '16',
                      title: "All",
                    ),
                    ProjectTaskCard(
                      clr: Colors.purple,
                      number: '7',
                      title: "On Going",
                    ),
                    ProjectTaskCard(
                      clr: Colors.purple,
                      number: '4',
                      title: "Uncompleted",
                    ),
                    ProjectTaskCard(
                      clr: Colors.purple,
                      number: '5',
                      title: "Ongoing",
                    ),
                    ProjectTaskCard(
                      clr: Colors.purple,
                      number: '7',
                      title: "Under \nReview",
                    ),
                    ProjectTaskCard(
                      clr: Colors.purple,
                      number: '4',
                      title: "Uncompleted",
                    ),
                  ]),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 580,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: taskList.length,
                  //  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProjectDetails()));

                      },
                      child: Container(
                        height: 108,
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(14)),
                        padding:
                        EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 8,
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${taskList[index].taskName}",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFE4E4E6),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              "ID: ${taskList[index].id}",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFE9E9EB),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "${taskList[index].delay} Task",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFFE9E9EB),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            flex: 8,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    color: taskList[index]
                                                        .color
                                                        .withOpacity(0.2),
                                                    borderRadius:
                                                    BorderRadius.circular(14),
                                                  ),
                                                ),
                                                LayoutBuilder(
                                                  builder:
                                                      (context, constraints) {
                                                    return Container(
                                                      width: constraints
                                                          .maxWidth *
                                                          (taskList[index]
                                                              .percentage /
                                                              100),
                                                      height: 5,
                                                      decoration: BoxDecoration(
                                                        color:
                                                        taskList[index].color,
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              flex: 2,
                                              child: Align(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  "${taskList[index].percentage} / 20",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFFE4E4E6),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 5,
                                          backgroundColor: Colors.teal,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${taskList[index].delay} left",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFFE9E9EB),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectTaskCard extends StatelessWidget {
  ProjectTaskCard({Key? key, this.clr, this.number, this.title})
      : super(key: key);

  Color? clr;
  String? number, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 57,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: clr,
              ),
            ),
            flex: 1,
          ),
          Expanded(
              flex: 25,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$number",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFE4E4E6)),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text("$title",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFE4E4E6))),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}