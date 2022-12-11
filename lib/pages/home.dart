import 'package:bick/components/large_button.dart';
import 'package:bick/components/small_text.dart';
import 'package:bick/constant/colors.dart';
import 'package:bick/pages/splash_screen.dart';
import 'package:bick/utility/dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.45,
                0.85,
              ],
              colors: [
                AppColor.gradientTop,
                AppColor.gradientBottom,
              ]),
        ),
        child: Column(
          children: [
            Container(
                height: Dimension.height80,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    // fit: BoxFit.cover,
                    image: AssetImage('assets/bick_logo.png'),
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LargeButton(
                    title: "Get Started",
                    onPressed: () => Get.to(SplashScreen())),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallText(title: "Already have an account?"),
                    TextButton(
                      onPressed: () {},
                      child: SmallText(
                        title: "Log in",
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
