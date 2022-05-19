import 'package:flutter/material.dart';
import 'package:task_app/widget/brand_color.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                ),
                title: Text(
                  "Shoo phar Nid",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Graphics Design Team",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE4E4E6)),
                ),
              ),
              SizedBox(height: 20,),
              ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.white,
                ),
                title: Text(
                  "Help",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE4E4E6)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.privacy_tip,
                  color: Colors.white,
                ),
                title: Text(
                  "Privacy",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE4E4E6)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
