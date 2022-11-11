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
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.admin_panel_settings,
                    color: landingButtons, size: 30.0),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.light_mode, color: landingButtons, size: 30.0),
              )),
        ],
      ),
      backgroundColor: darkBgLanding,
    );
  }
}
