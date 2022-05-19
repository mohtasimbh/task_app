import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/screen/steper/steper5.dart';
import 'package:task_app/widget/brand_color.dart';
import 'package:task_app/widget/button.dart';
import 'package:task_app/widget/text_field.dart';

class Steper3 extends StatefulWidget {
  const Steper3({Key? key}) : super(key: key);

  @override
  State<Steper3> createState() => _Steper3State();
}

class _Steper3State extends State<Steper3> {

  TextEditingController teamnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(
          Icons.arrow_back_ios,
          size: 17,
          color: Colors.white,
        ),),
        title: SvgPicture.asset(
          'images/part3.svg',
          height: 8,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Create Your Own Team?", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFFF8F8F8))),
            SizedBox(height: 16,),
            CustomeTextField(
              title: "Your Team Name",
              hintText: "e.g Parto Team",
              controller: teamnameController,
              icon: Padding(
                padding: const EdgeInsets.all(15),
                child: SvgPicture.asset(
                  'images/person.svg',
                  color: Color(0xFF8A8A8E),
                ),
              ),
            ),
            SizedBox(height: 450,),
            ButtonRound(
              title: "Join Team",
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Steper5()));
              },
            )
          ],
        ),
      ),
    );
  }
}
