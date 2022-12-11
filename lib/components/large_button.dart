import 'package:bick/constant/colors.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  VoidCallback onPressed;
  String title;
  FontWeight fontWeight;
  double size;
  LargeButton({super.key, required this.title, required this.onPressed, this.size = 18,  this.fontWeight = FontWeight.normal });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.backgroundColor,
          padding: EdgeInsets.symmetric( vertical: 18),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      onPressed: onPressed,
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: AppColor.textColor,fontSize: size,fontWeight: fontWeight),
        ),
      ),
    );
  }
}
