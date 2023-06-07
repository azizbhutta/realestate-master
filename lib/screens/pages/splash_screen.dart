import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:realestate/screens/constants/mycolors.dart';
import 'package:realestate/screens/pages/welcome_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'first_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: AnimatedSplashScreen(
              duration: 4000,
              splash: Image.asset("assets/images/logo.png", height: 1000,),
              nextScreen: const InfoScreen(),
              splashTransition: SplashTransition.scaleTransition,
              pageTransitionType: PageTransitionType.fade,
              curve: Curves.easeIn,
              centered: true,
              backgroundColor: whiteColor)),
        ),
    );
  }
}
