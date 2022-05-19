import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/screen/steper/steper3.dart';
import 'package:task_app/screen/steper/steper4.dart';
import 'package:task_app/widget/brand_color.dart';
import 'package:task_app/widget/button.dart';

class Steper2 extends StatefulWidget {
  const Steper2({Key? key}) : super(key: key);

  @override
  State<Steper2> createState() => _Steper2State();
}

class _Steper2State extends State<Steper2> {
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
          'images/part2.svg',
          height: 8,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ButtonRound(
              title: "Create Your Own Team",
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Steper3()));
              },
            ),
            SizedBox(height: 24,),
            Text("Or", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFFF8F8F8))),
            SizedBox(height: 24,),
            ButtonRound(
              title: "Join Team",
              isColor: true,
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Steper4()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
