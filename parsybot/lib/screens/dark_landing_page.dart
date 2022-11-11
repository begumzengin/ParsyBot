import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';

class DarkLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: darkBgLanding,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.language, color: changeLanguage, size: 30.0),
        ),
      ),
    );
  }
}
