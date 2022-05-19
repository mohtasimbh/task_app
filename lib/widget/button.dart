import 'package:flutter/material.dart';

class ButtonRound extends StatelessWidget {
  ButtonRound({Key? key,this.title,this.isColor,this.onTap}) : super(key: key);

  String? title;
  bool? isColor;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: isColor==null? Color(0xFF246BFD): Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
      side: BorderSide(color: isColor == null? Colors.transparent: Colors.grey)),
      height: 56,
      minWidth: double.infinity,
      child: Text("${title}",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFFFFFF))),
    );
  }
}
