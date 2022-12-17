import 'package:flutter/material.dart';

class CardInfoScreen extends StatelessWidget {
  final int index;

  CardInfoScreen(this.index);

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The details page'),
      ), // AppBar
      body: Center(
        child: Text('The details page #$index'),
      ), // Center
    );
  }
}