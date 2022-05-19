import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/screen/loginsuccess.dart';
import 'package:task_app/widget/brand_color.dart';
import 'package:task_app/widget/button.dart';
import 'package:task_app/widget/text_field.dart';

class Steper5 extends StatefulWidget {
  const Steper5({Key? key}) : super(key: key);

  @override
  State<Steper5> createState() => _Steper5State();
}

class _Steper5State extends State<Steper5> {

  TextEditingController teamemailController = TextEditingController();

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
          'images/part5.svg',
          height: 8,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Invite Your Team Member", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFFF8F8F8))),
            SizedBox(height: 16,),
            CustomeTextField(
              title: "Email Member",
              hintText: "Type an email addrress",
              controller: teamemailController,
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
