import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_app/screen/steper/steper2.dart';
import 'package:task_app/widget/brand_color.dart';
import 'package:task_app/widget/button.dart';
import 'package:task_app/widget/text_field.dart';

class Steper1 extends StatefulWidget {
  const Steper1({Key? key}) : super(key: key);

  @override
  State<Steper1> createState() => _Steper1State();
}

class _Steper1State extends State<Steper1> {
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
          'images/part1.svg',
          height: 8,
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text("Complete Your Profile",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFF8F8F8))),
            InkWell(
              onTap: () {
                selectImage();
              },
              child: Container(
                margin: EdgeInsets.all(16),
                height: 88,
                width: 88,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF8E8E93),
                ),
                child: _image== null? Padding(
                  padding: EdgeInsets.all(32),
                  child: SvgPicture.asset(
                    'images/camara_icon.svg',
                  ),
                ):CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: FileImage(_image!),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            CustomeTextField(
              title: "Your Full Name",
              hintText: "Enter Your Full Name",
              controller: nameController,
              icon: Padding(
                padding: const EdgeInsets.all(15),
                child: SvgPicture.asset(
                  'images/person.svg',
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
              title: "Continue",
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Steper2()));
              },
            )
          ],
        ),
      ),
    );
  }

  selectImage() {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("Select Your Image"),
            children: [
              SimpleDialogOption(
                child: Text("Choos Your Camara"),
                onPressed: (){
                  getImageFromCamera();
                },
              ),
              SimpleDialogOption(
                child: Text("Choose Your Gallery"),
                onPressed: (){
                  getImageFromGallery();
                },
              ),
              SimpleDialogOption(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  File? _image;
  ImagePicker picker = ImagePicker();

  getImageFromGallery() async {
    var pickImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickImage!.path);
    });
    Navigator.of(context).pop();
  }

  getImageFromCamera() async {
    var pickImage = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickImage!.path);
    });
    Navigator.of(context).pop();
  }
}
