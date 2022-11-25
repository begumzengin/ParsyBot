import 'package:flutter/material.dart';
import 'package:parsybot/constants.dart';

class MenuQR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu QR'),
        backgroundColor: cinnabar,
      ),
      body: Image.asset(
        'assets/parsybot_images/menuqr.jpeg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }
}
