import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../l10n/app_localizations.dart';
import '../constants.dart';
import '../screens/faq_page.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context);
    ;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          height: 40,
          child: ElevatedButton(
              onPressed: () {
                (locale.languageCode == 'en')
                    ? Navigator.pushNamed(context, '/faq')
                    : Navigator.pushNamed(context, '/sss');
              },
              child: Text(t.faqTitle,
                  style: GoogleFonts.mulish(color: Colors.white, fontSize: 15)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(cinnabar),
                shadowColor: MaterialStateProperty.all<Color>(sinbad),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              )),
        ),
        SizedBox(
          height: 40,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(t.mapTitle),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(cinnabar),
                shadowColor: MaterialStateProperty.all<Color>(sinbad),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              )),
        ),
        SizedBox(
          height: 40,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(t.menusTitle,
                  style: GoogleFonts.mulish(color: Colors.white, fontSize: 15)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(cinnabar),
                shadowColor: MaterialStateProperty.all<Color>(sinbad),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              )),
        ),
        SizedBox(
          height: 40,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(t.phonebookTitle,
                  style: GoogleFonts.mulish(color: Colors.white, fontSize: 15)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(cinnabar),
                shadowColor: MaterialStateProperty.all<Color>(sinbad),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              )),
        ),
        SizedBox(
          height: 40,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(t.eventsTitle,
                  style: GoogleFonts.mulish(color: Colors.white, fontSize: 15)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(cinnabar),
                shadowColor: MaterialStateProperty.all<Color>(sinbad),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              )),
        ),
        SizedBox(
          height: 40,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(t.newsTitle,
                  style: GoogleFonts.mulish(color: Colors.white, fontSize: 15)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(cinnabar),
                shadowColor: MaterialStateProperty.all<Color>(sinbad),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              )),
        ),
        SizedBox(
          height: 40,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(t.administrationTitle,
                  style: GoogleFonts.mulish(color: Colors.white, fontSize: 15)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(cinnabar),
                shadowColor: MaterialStateProperty.all<Color>(sinbad),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              )),
        ),
        SizedBox(
          height: 40,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(t.facultiesTitle,
                  style: GoogleFonts.mulish(color: Colors.white, fontSize: 15)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(cinnabar),
                shadowColor: MaterialStateProperty.all<Color>(sinbad),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              )),
        ),
      ],
    );
  }
}
