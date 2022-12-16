import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet/screen/registr_sreen.dart';


import 'const/global_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  static const AssetImage logo_splash = AssetImage('assets/img/logo.png');
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 10), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> (RegistrScreen())));
    });

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: ImageIcon(logo_splash, size: 150,color:AppColors.blue)),
            SizedBox(height: 80,)
          ],
        ),
      ),
    );
  }
}

