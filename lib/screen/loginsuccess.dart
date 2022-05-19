import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/screen/tab_bar/home.dart';
import 'package:task_app/widget/button.dart';

class LoginSuccess extends StatefulWidget {
  const LoginSuccess({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginSuccess> createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 397,
          width: 343,
          color: Color(0xFF191A22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                height: 95,
                width: 95,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF8E8E93),
                ),
                child: _image == null
                    ? Padding(
                        padding: EdgeInsets.all(32),
                        child: SvgPicture.asset(
                          'images/camara_icon.svg',
                        ),
                      )
                    : CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: FileImage(_image!),
                      ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text("Congratulations!",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFF8F8F8))),
              ),
              Container(
                padding:EdgeInsets.all(10),
                child: Text(
                    "Parto team was created successfully, create your latest project so you can work with your team.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFFF8F8F8))),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: ButtonRound(
                  title: "Done",
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
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
