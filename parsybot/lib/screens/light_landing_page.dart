import 'package:google_fonts/google_fonts.dart';
import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:parsybot/screens/chat_screen.dart';
import 'package:parsybot/screens/light_admin_login.dart';
import 'package:parsybot/util/button_row.dart';
//import 'package:parsybot/screens/light_conversation.dart';
import 'package:parsybot/util/light_drawer.dart';
import '../l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../model/locale.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    var selectedLocale = Localizations.localeOf(context).toString();
    final targetPlatform = Theme.of(context).platform;
    final screenWidth = MediaQuery.of(context).size.width;
    bool showDrawer;

    if (targetPlatform == TargetPlatform.android ||
        targetPlatform == TargetPlatform.iOS ||
        screenWidth < 600) {
      showDrawer = true;
    } else {
      showDrawer = false;
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: lightBackground,
        iconTheme: IconThemeData(color: pickledBluewood),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => AdminLogin())));
                },
                icon: Icon(Icons.admin_panel_settings,
                    color: pickledBluewood, size: 30.0)),
          ),
          Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Consumer<LocaleModel>(
                builder: (context, localeModel, child) => DropdownButton(
                    value: selectedLocale,
                    items: [
                      DropdownMenuItem(
                        child: Text('🇬🇧', style: TextStyle(fontSize: 22)),
                        value: 'en',
                      ),
                      DropdownMenuItem(
                        child: Text('🇹🇷', style: TextStyle(fontSize: 22)),
                        value: 'tr',
                      ),
                    ],
                    onChanged: (String? value) {
                      if (value != null) {
                        localeModel.set(Locale(value));
                      }
                    }),
              )
              /*
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.language, color: pickledBluewood, size: 30.0),
            ),
            */
              ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.dark_mode, color: pickledBluewood, size: 30.0),
            ),
          ),
        ],
      ),
      backgroundColor: lightBackground,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 90),
            if (kIsWeb)
              Image.asset('assets/parsybot_images/parsy_light_landing.png',
                  width: 250.0, height: 250.0)
            else
              Image.asset('assets/parsybot_images/parsy_light_landing.png',
                  width: 200.0, height: 198.0),
            SizedBox(height: 30),
            SizedBox(
              width: 245.0,
              height: 60.0,
              child: ElevatedButton(
                  onPressed: () {
                    /*
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => LightConversation())));
                          */
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ChatScreen())));
                  },
                  child: Text(
                    t.parsyGreeting,
                    //style: TextStyle(color: Colors.white, fontSize: 18),
                    style:
                        GoogleFonts.mulish(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(cinnabar),
                    shadowColor: MaterialStateProperty.all<Color>(sinbad),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                  )),
            ),
            SizedBox(height: 200),
            if (kIsWeb) ButtonRow(),
          ],
        ),
      ),
      drawer: showDrawer ? LightDrawer() : null,
    );
  }
}
