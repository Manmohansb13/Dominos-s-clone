import 'package:dominos/homepage.dart';
import 'package:dominos/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:dominos/location_splash.dart';

// For the first splash screen which will come when app opens
import 'main.dart';
class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash:SingleChildScrollView(
          child: Column(
            children: [
              Center(child: LottieBuilder.asset('Lottie/Animation - 1708707659661.json')),
            //   Used lottie files and package
            ],
          ),
        )
        , nextScreen: locationx(),
      duration: 3000,
      splashIconSize: 400.0,
      backgroundColor: Colors.blue,

    );
  }
}
