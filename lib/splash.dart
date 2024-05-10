
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:azkar/morning%20zekr.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatefulWidget{
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build (BuildContext context){
    return Scaffold(


      body:AnimatedSplashScreen (
        backgroundColor: Colors.white,

        splash: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Image(
                image:AssetImage("assets/images/2.jpg")
            ),



          ],
        ),
        nextScreen:morning() ,
        splashIconSize: double.infinity,
        duration: 600,


      ),



    );

  }
}




