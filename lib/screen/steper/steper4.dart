import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/screen/loginsuccess.dart';
import 'package:task_app/widget/brand_color.dart';
import 'package:task_app/widget/button.dart';
import 'package:task_app/widget/text_field.dart';

class Steper4 extends StatefulWidget {
  const Steper4({Key? key}) : super(key: key);

  @override
  State<Steper4> createState() => _Steper4State();
}

class _Steper4State extends State<Steper4> {

  TextEditingController teamcodeController = TextEditingController();

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
          'images/part4.svg',
          height: 8,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Enter Your Code Team", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFFF8F8F8))),
            SizedBox(height: 16,),
            CustomeTextField(
              title: "Code Team",
              hintText: "e.g JXHJKH",
              controller: teamcodeController,
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginSuccess()));
              },
            )
          ],
        ),
      ),
    );
  }
}
