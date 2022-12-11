import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.height;
  static double screenWidth = Get.width;

  //container height 
  static double height80 = (screenHeight * 80) /100;
  static double height70 = (screenHeight * 78) /100;
  static double height93 = (screenHeight * 93) /100;

  static double width80P = (screenWidth * 80) /100;
  


  static double width10 = screenWidth / 45;
  static double width80 = screenWidth / 5.24;


  //sized box


  //custom paint value
  static double line = (screenWidth /4);
  static double lineHight = screenHeight /4;
  
  
  
  static double pageViewTextContainer = screenHeight / 6.5;
}