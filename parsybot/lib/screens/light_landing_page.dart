import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';
import 'package:parsybot/screens/dark_landing_page.dart';
import 'package:parsybot/screens/light_admin_login.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: lightBackground,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.language, color: pickledBluewood, size: 30.0)),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => AdminLogin())));
                },
                icon: Icon(Icons.admin_panel_settings,
                    color: pickledBluewood, size: 30.0)),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DarkLandingPage()));
              },
              icon: Icon(Icons.dark_mode, color: pickledBluewood, size: 30.0),
            ),
          )
        ],
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
          ),
          SizedBox(height: 270),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ButtonBar(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () {},
                          child: Text('S.S.S.',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(cinnabar),
                            shadowColor:
                                MaterialStateProperty.all<Color>(sinbad),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                          )),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text('Harita',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(cinnabar),
                            shadowColor:
                                MaterialStateProperty.all<Color>(sinbad),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                          )),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text('Menü QR',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(cinnabar),
                            shadowColor:
                                MaterialStateProperty.all<Color>(sinbad),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                          )),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text('Rehber',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(cinnabar),
                            shadowColor:
                                MaterialStateProperty.all<Color>(sinbad),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                          ))
                    ],
                  )))
        ],
      )),
    );
  }
}
