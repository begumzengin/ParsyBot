import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackground,
        body: Center(
          child: Image.asset('assets/parsybot_images/parsy_light_landing.png',
              width: 188.0, height: 185.0),
        ));
  }
}
