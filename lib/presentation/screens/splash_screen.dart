import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet/presentation/screens/login_srceen.dart';
import 'package:meet/presentation/screens/registr_screen.dart';

import '../../core/custom_widgets/const/global_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  static const AssetImage logo_splash = AssetImage('assets/img/logo.png');
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/login');
    });

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child:
                    ImageIcon(logo_splash, size: 150, color: AppColors.blue)),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
