import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/widget/brand_color.dart';
import 'package:task_app/widget/button.dart';
import 'package:task_app/widget/text_field.dart';

class ProjectDetails extends StatefulWidget {
  const ProjectDetails({Key? key}) : super(key: key);

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  TextEditingController projectcolorController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                color: bgColor,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Add Tags',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        CustomeTextField(
                          title: "Tag Nmae",
                          hintText: "Enter your name tags",
                          controller: projectcolorController,
                          icon: Padding(
                            padding: const EdgeInsets.all(15),
                            child: SvgPicture.asset(
                              'images/calander.svg',
                              height: 8,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Color",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        cb(),
                        SizedBox(
                          height: 12,
                        ),
                        cb(),
                        SizedBox(
                          height: 12,
                        ),
                        cb(),
                        SizedBox(
                          height: 12,
                        ),
                        ButtonRound(
                          title: "Add",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }),
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            )
          ],
          backgroundColor: bgColor,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: Text(
            "Project Details",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFFE4E4E6),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: 287,
                width: 343,
                decoration: BoxDecoration(
                  color: Color(0xFF292B3E),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Web Design - PT Mencari\n Cinta Sejati",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFE4E4E6),
                      ),
                    ),
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 5,
                        ),
                        SizedBox(height:10),
                        Text(
                          "12 Tasks",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFE4E4E6),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:10),
                    Text(
                      "Goals",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFE4E4E6),
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFE4E4E6),
                      ),
                    ),
                    SizedBox(height:15),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                        Text(
                          "March 13, 17.00PM",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFE4E4E6),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                        Text(
                          "March 13, 17.00PM",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFE4E4E6),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(16),
                height: 500,
                width: 343,
                decoration: BoxDecoration(
                  color: Color(0xFF292B3E),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Tasks(5/12)",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 8,
                              width: 220,
                              color: Colors.grey,
                            ),
                            Container(
                              height: 8,
                              width: 90,
                              color: Colors.purple,
                            ),
                          ],
                        ),
                      ],
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.check_box,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Research Analysys",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFE4E4E6),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.check_box,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Design Systems",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFE4E4E6),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.check_box,
                        color: Colors.white,
                      ),
                      title: Text(
                        "wireframe",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFE4E4E6),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.check_box,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Mockup",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFE4E4E6),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.check_box,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Prototype",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFE4E4E6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row cb() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.amber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
