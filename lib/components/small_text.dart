import 'package:bick/constant/colors.dart';
import 'package:bick/utility/dimension.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  double size;
  String title;
  FontWeight fontWeight;
  Color color;
  SmallText({super.key, required this.title, this.size = 12, this.fontWeight =FontWeight.normal,this.color = AppColor.textColor});

  @override
  Widget build(BuildContext context) {
    return 
 Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          
          color: AppColor.textColor,
          fontSize: size,
          fontWeight: fontWeight
        ),

    );
  }
}
