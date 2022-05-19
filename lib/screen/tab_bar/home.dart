import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/screen/tab_bar/calander.dart';
import 'package:task_app/screen/tab_bar/my_task.dart';
import 'package:task_app/screen/tab_bar/profile.dart';
import 'package:task_app/screen/tab_bar/project.dart';
import 'package:task_app/widget/brand_color.dart';
import 'package:task_app/widget/button.dart';
import 'package:task_app/widget/text_field.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final List<Widget> pages = [MyTask(), Calander(), Project(), Profile()];
  final PageStorageBucket busket = PageStorageBucket();
  Widget currentScreen = MyTask();
  TextEditingController projectnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        actions: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 20,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: Color(0xFF8E8E93),
          ),
        ),
        title: Row(
          children: [
            Text(
              "Parto Team",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFE4E4E6)),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
      body: PageStorage(
        bucket: busket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showBottomSheet(context);
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          padding: EdgeInsets.all(5),
          color: Color(0xFF22292E),
          height: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = MyTask();
                            currentIndex = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('images/task.svg',
                                color: currentIndex == 0
                                    ? Colors.white
                                    : Colors.grey),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "My Task",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: currentIndex == 0
                                      ? Colors.white
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Calander();
                            currentIndex = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('images/calander.svg',
                                color: currentIndex == 1
                                    ? Colors.white
                                    : Colors.grey),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Calendar",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: currentIndex == 1
                                      ? Colors.white
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      MaterialButton(
                        minWidth: 110,
                        onPressed: () {
                          setState(() {
                            currentScreen = Project();
                            currentIndex = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('images/project.svg',
                                color: currentIndex == 3
                                    ? Colors.white
                                    : Colors.grey),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Project",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: currentIndex == 3
                                      ? Colors.white
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Profile();
                            currentIndex = 4;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('images/person.svg',
                                color: currentIndex == 4
                                    ? Colors.white
                                    : Colors.grey),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: currentIndex == 4
                                      ? Colors.white
                                      : Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SvgPicture.asset(
                'images/Indicator.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 1.2,
            decoration: BoxDecoration(
                color: Color(0xFF292B3E),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                )),
            child: Container(
              padding: EdgeInsets.all(16),
              child: ListView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                children: [
                  Row(
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF8F8F8),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.close,
                            color: Color(0xFF8A8A8E),
                            size: 20,
                          ))
                    ],
                  ),
                  CustomeTextField(
                    title: "Project Name",
                    hintText: "Enter Project Name",
                    controller: projectnameController,
                    icon: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset(
                        'images/project.svg',
                        height: 8,
                      ),
                    ),
                  ),
                  CustomeTextField(
                    title: "Assigned to",
                    hintText: "Select Your Team",
                    controller: projectnameController,
                    icon: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset(
                        'images/person.svg',
                        height: 8,
                      ),
                    ),
                  ),
                  CustomeTextField(
                    title: "Process",
                    hintText: "Ongoing",
                    controller: projectnameController,
                    icon: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset(
                        'images/project.svg',
                        height: 8,
                      ),
                    ),
                  ),
                  CustomeTextField(
                    title: "Timeline",
                    hintText: "2 March 2021",
                    controller: projectnameController,
                    icon: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset(
                        'images/calander.svg',
                        height: 8,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_link,
                            color: Color(0xFF8A8A8E),
                            size: 30,
                          )),
                      Text(
                        "Attched Files",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF8F8F8),
                        ),
                      ),
                    ],
                  ),
                  ButtonRound(
                    title: "Done",
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            )));
  }
}
