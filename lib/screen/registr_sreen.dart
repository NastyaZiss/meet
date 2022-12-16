import 'package:flutter/material.dart';

class RegistrScreen extends StatefulWidget {
  const RegistrScreen({Key? key}) : super(key: key);

  @override
  State<RegistrScreen> createState() => _RegistrScreenState();
}

class _RegistrScreenState extends State<RegistrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Image.asset("assets/img/logo.png"),
          ),
        ],
      ),
    );
  }
}
