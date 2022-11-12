import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';
import 'package:parsybot/screens/light_landing_page.dart';
import 'package:parsybot/screens/dark_admin_login.dart';

class DarkLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: darkBgLanding,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.language, color: landingButtons, size: 30.0),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => DarkAdminLogin())));
                  },
                  icon: Icon(Icons.admin_panel_settings,
                      color: landingButtons, size: 30.0),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LandingPage()));
                  },
                  icon:
                      Icon(Icons.light_mode, color: landingButtons, size: 30.0),
                )),
          ],
        ),
        backgroundColor: darkBgLanding,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/parsybot_images/parsy_dark_landing.png',
              width: 188.0, height: 185.0),
          SizedBox(height: 30),
          SizedBox(
            width: 204.0,
            height: 46.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sor bana!',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(darkPrimary),
                shadowColor: MaterialStateProperty.all<Color>(userBackdrop),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0))),
              ),
            ),
          )
        ])));
  }
}
