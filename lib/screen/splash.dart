import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/screen/onbording/onbording.dart';
import 'package:task_app/screen/onbording/onbording1.dart';
import 'package:task_app/widget/brand_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                margin: EdgeInsets.only(bottom: 32),
                width: 96,
                height: 96,
                color: Color(0xFF292B3E),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                  child: SvgPicture.asset(
                    'images/Layoutsplashicon.svg',
                  ),
                ),
              ),
            ),
            Text("RANCANG",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFE4E4E6))),
            SizedBox(height: 8),
            Text("Your Personal Tesk Manager",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFE9E9EB))),
            SizedBox(height: 264),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Onbording()));
              },
              color: Color(0xFF246BFD),
              padding: EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28)),
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Getting Started",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF))),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 19,
                  )
                ],
              ),
            ),
            SizedBox(height: 40,),
            SvgPicture.asset(
              'images/Indicator.svg',
            ),
          ],
        ),
      ),
    );
  }
}
