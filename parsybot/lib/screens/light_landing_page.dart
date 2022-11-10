import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackground,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/parsybot_images/parsy_light_landing.png',
                width: 188.0, height: 185.0),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {},
                child: Text('Sor bana!',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                style: ElevatedButton.styleFrom(backgroundColor: cinnabar))
          ],
        )));
  }
}

/*
Padding(
                padding: const EdgeInsets.symmetric(horizontal: 500.0),
                child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: cinnabar,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                        child: Text('Sor bana!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )))))
*/