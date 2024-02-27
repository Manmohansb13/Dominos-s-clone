import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dominos/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


// Location splash screen
class locationx extends StatelessWidget {
  const locationx({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Vellore",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Center(child: LottieBuilder.asset('Lottie/Animation - 1708966629818.json')),
          ],
        ),
      )
      , nextScreen: Homepage(),
      duration: 4000,
      splashIconSize: 400.0,
      backgroundColor: Colors.white,
    );

  }
}
