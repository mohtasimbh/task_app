import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/screen/loginsuccess.dart';
import 'package:task_app/screen/signup.dart';
import 'package:task_app/widget/brand_color.dart';
import 'package:task_app/widget/button.dart';
import 'package:task_app/widget/text_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.close,
            size: 17,
            color: Colors.white,
          ),
        ),
        title: Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
            },
            child: Text("Sign Up", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFFF8F8F8))),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(
              height: 22,
            ),
            CustomeTextField(
              title: "Your Email Address",
              hintText: "Enter Your Email Address",
              controller: emailController,
              icon: Padding(
                padding: const EdgeInsets.all(15),
                child:Icon(
                  Icons.email_outlined,
                  color: Color(0xFF8A8A8E),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CustomeTextField(
              title: "Your Password",
              hintText: "Enter your Password",
              controller: passwordController,
              icon: Padding(
                padding: const EdgeInsets.all(15),
                child: SvgPicture.asset(
                  'images/pass.svg',
                  color: Color(0xFF8A8A8E),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ButtonRound(
              title: "Login",
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginSuccess()));
              },
            ),
            SizedBox(
              height: 15,
            ),
            Text("Forgot Your Password", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFFF8F8F8))),
          ],
        ),
      ),
    );
  }
}
