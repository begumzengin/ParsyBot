import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../l10n/app_localizations.dart';
import '../model/locale.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    var selectedLocale = Localizations.localeOf(context).toString();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: lightBackground,
        iconTheme: IconThemeData(color: pickledBluewood),
        actions: <Widget>[
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
            ),
          ),
        ],
      ),
      backgroundColor: lightBackground,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Image.asset('assets/parsybot_images/about_us.png',
                height: 250, width: 200),
            SizedBox(height: 30),
            Text(
              t.aboutUs,
              style: GoogleFonts.mulish(),
            ),
            SizedBox(height: 30),
            Text(
              t.contactUs,
              style: GoogleFonts.mulish(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Text(
                  'msert@baskent.edu.tr\nfnursena.cavli@gmail.com\nzeynepkarkiner@gmail.com\n14begumyaman@gmail.com\nbegumzengin1@gmail.com',
                  style: GoogleFonts.mulish()),
            )
          ],
        ),
      ),
    );
  }
}
