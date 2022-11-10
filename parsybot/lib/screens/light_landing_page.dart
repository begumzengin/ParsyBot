import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: lightBackground,
        ),
        backgroundColor: lightBackground,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/parsybot_images/parsy_light_landing.png',
                width: 188.0, height: 185.0),
            SizedBox(height: 30),
            SizedBox(
              width: 204.0,
              height: 46.0,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sor bana!',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(cinnabar),
                    shadowColor: MaterialStateProperty.all<Color>(sinbad),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0))),
                  )),
            )
          ],
        )));
  }
}
