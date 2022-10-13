import 'package:flutter/material.dart';
import 'package:parsybot/screens/landing/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ParsyBot',
      home: LandingPage(),
    );
  }
}
