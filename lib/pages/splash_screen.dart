import 'dart:math';

import 'package:bick/components/small_text.dart';
import 'package:bick/constant/colors.dart';
import 'package:bick/models/splash_screen_data.dart';
import 'package:bick/utility/dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(left: 30, right: 30),
        decoration: const BoxDecoration(
            color: Colors.blue,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.15, 0.5],
              colors: [
                AppColor.gradientBottom,
                AppColor.backgroundColor,
              ],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: Dimension.height93,
              child: Stack(
                children: [
                  Container(
                    // color: Colors.red,
                    child: CustomPaint(
                      painter: RectanglePattern(),
                      size: Size.fromHeight(Dimension.screenWidth),
                    ),
                  ),
                  PageView.builder(
                    onPageChanged: (value) => setState(() {
                      screenIndex = value;
                    }),
                    itemCount: SplashScreenData.splashScreenList.length,
                    itemBuilder: ((context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: Dimension.height70,
                            child: Center(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/bick.png'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SmallText(
                            title: SplashScreenData
                                .splashScreenList[screenIndex].titleTxt,
                            size: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: Dimension.width80P,
                            child: SmallText(
                                title: SplashScreenData
                                    .splashScreenList[screenIndex].description),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: SmallText(title: "Skip"),
                ),
                Row(
                    children: List.generate(
                        SplashScreenData.splashScreenList.length,
                        (index) => Container(
                              margin: EdgeInsets.only(right: 5),
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: index == screenIndex
                                      ? AppColor.textColor
                                      : Color.fromARGB(255, 198, 184, 199),
                                  shape: BoxShape.circle),
                            ))),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (screenIndex <= 1) {
                        screenIndex++;
                      }
                    });
                  },
                  child: SmallText(
                    title: "Next",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RectanglePattern extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..strokeWidth = 3.0 // 1.
      ..style = PaintingStyle.stroke // 2.
      ..color = AppColor.backgroundColor;

    //vertical line
    canvas.drawLine(Offset(Dimension.line, 0),
        Offset(Dimension.line, Dimension.height70), paint);
    canvas.drawLine(Offset((3 * Dimension.line), 0),
        Offset((3 * Dimension.line), Dimension.height70), paint);
    //vertical line
    canvas.drawLine(Offset((3 * Dimension.line), 40),
        Offset(4 * Dimension.line, 40), paint);
    canvas.drawLine(Offset(0, 40), Offset(Dimension.line, 40), paint);
    canvas.drawLine(Offset(0, Dimension.lineHight),
        Offset(Dimension.screenWidth, Dimension.lineHight), paint);
    canvas.drawLine(Offset(0, (2 * Dimension.lineHight)),
        Offset(Dimension.screenWidth, (2 * Dimension.lineHight)), paint);
    //circle drawing
    // 3.
    canvas.drawCircle(
        Offset(2 * Dimension.line, Dimension.screenHeight / 3), 180, paint);

    //draw arc
    // canvas.drawArc(
    //     new Rect.fromLTWH(100, 0, Dimension.line * 3, 300), pi  , pi , false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
