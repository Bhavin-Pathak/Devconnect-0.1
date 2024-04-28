import 'dart:async';

import 'package:devconnect/Screens/Onbording/onbording_screen.dart';
import 'package:devconnect/utils/assets_helper.dart';
import 'package:devconnect/utils/screen_size.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset(
        assetsImageHelper.splash,
        height: SizeConfig.screenH,
      ),
    );
  }
}
