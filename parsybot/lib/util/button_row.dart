import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../l10n/app_localizations.dart';
import '../constants.dart';
import '../screens/menuqr_page.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  Future<void> _launchHaberUrl() async {
    final Uri _url = Uri.parse('https://www.baskent.edu.tr/tr/haberler');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchEtkinlikUrl() async {
    final Uri _url = Uri.parse('https://www.baskent.edu.tr/tr/etkinlikler');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchIdariBirimUrl() async {
    final Uri _url = Uri.parse('https://www.baskent.edu.tr/tr/idari_birimler');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchHaritaUrl() async {
    final Uri _url = Uri.parse('https://www.baskent.edu.tr/sanalgezinti/');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchRehberUrl() async {
    final Uri _url = Uri.parse('http://truva.baskent.edu.tr/rehber/');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchUrl(String _url) async {
    final Uri _myUrl = Uri.parse(_url);
    if (!await launchUrl(_myUrl)) {
      throw 'Could not launch $_url';
    }
  }

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
              onPressed: () {
                _launchHaritaUrl();
              },
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
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MenuQR()));
              },
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
              onPressed: () {
                _launchRehberUrl();
              },
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
              onPressed: () {
                _launchEtkinlikUrl();
              },
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
              onPressed: () {
                _launchHaberUrl();
              },
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
              onPressed: () {
                _launchIdariBirimUrl();
              },
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
              onPressed: () {
                _launchUrl(
                    "https://www.baskent.edu.tr/tr/akademik-yasam/icerik/fakulteler/145");
              },
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
