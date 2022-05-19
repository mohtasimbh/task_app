import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/Model/my_list.dart';
import 'package:task_app/widget/brand_color.dart';
import 'package:task_app/widget/button.dart';
import 'package:task_app/widget/text_field.dart';

class InviterMamber extends StatefulWidget {
  const InviterMamber({Key? key}) : super(key: key);

  @override
  State<InviterMamber> createState() => _InviterMamberState();
}

class _InviterMamberState extends State<InviterMamber> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addMamber(context);
        },
        child: Icon(Icons.add),
      ),
      body: GridView.builder(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.all(12),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: taskList.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
                padding: EdgeInsets.all(13),
                color: Color(0xFF292B3E),
                height: 167,
                width: 131,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF8E8E93),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "${taskList[index].taskName}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFE4E4E6),
                      ),
                    ),
                    Text(
                      "${taskList[index].email}",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFE9E9EB),
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
  TextEditingController projectnameController = TextEditingController();
  void _addMamber(context) {
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Color(0xFF8E8E93),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Add New Member",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF8F8F8),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Make your team good with us. invite your team members. to get going",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFE9E9EB),
                        ),
                      ),
                      SizedBox(height: 10),
                      CustomeTextField(
                        title: "Team Member",
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
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Color(0xFF8A8A8E),
                            size: 20,
                          )),
                      Text(
                        "Add Member",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF8F8F8),
                        ),
                      ),
                    ],
                  ),
                  ButtonRound(
                    title: "Invite",
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            )));
  }
}
