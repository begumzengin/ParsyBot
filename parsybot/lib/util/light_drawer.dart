import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parsybot/constants.dart';
import 'package:parsybot/screens/faq_page.dart';
import 'package:url_launcher/url_launcher.dart';
import '../l10n/app_localizations.dart';

import '../screens/menuqr_page.dart';

class LightDrawer extends StatelessWidget {
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

  const LightDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: sanMarino,
              ),
              child: Text(
                t.shortcutsTitle,
                style: GoogleFonts.asap(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ),
          ),
          ListTile(
            title: Text(
              t.faqTitle,
              style: GoogleFonts.muktaVaani(
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.6,
                  fontSize: 15),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FaqPage()));
            },
          ),
          ListTile(
            title: Text(t.mapTitle,
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 15)),
            onTap: () {
              _launchHaritaUrl();
            },
          ),
          ListTile(
            title: Text(t.menusTitle,
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 15)),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MenuQR()));
            },
          ),
          ListTile(
            title: Text(t.phonebookTitle,
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 15)),
            onTap: () {
              _launchRehberUrl();
            },
          ),
          ListTile(
            title: Text(t.eventsTitle,
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 15)),
            onTap: () {
              _launchEtkinlikUrl();
            },
          ),
          ListTile(
            title: Text(t.newsTitle,
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 15)),
            onTap: () {
              _launchHaberUrl();
            },
          ),
          ListTile(
            title: Text(t.administrationTitle,
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 15)),
            onTap: () {
              _launchIdariBirimUrl();
            },
          ),
          ExpansionTile(
              title: Text(t.facultiesTitle,
                  style: GoogleFonts.muktaVaani(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.6,
                      fontSize: 15)),
              children: <Widget>[
                ListTile(
                  title: Text(t.dentistryTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(t.pharmacyTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(t.educationTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(t.scienceAndLettersTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(t.fineArtsDesignArchTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(t.lawTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(t.economicsAdministrativeTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(t.communicationTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(t.engineeringTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(t.healthSciencesTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(t.commercialScienceTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(t.medicineTitle,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
              ]),
        ],
      ),
    );
  }
}
