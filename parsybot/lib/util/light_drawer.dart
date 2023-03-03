import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parsybot/constants.dart';
import 'package:url_launcher/url_launcher.dart';

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
                'Kısayollar',
                style: GoogleFonts.asap(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Sık Sorulan Sorular',
              style: GoogleFonts.muktaVaani(
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.6,
                  fontSize: 15),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text('Harita',
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 15)),
            onTap: () {
              _launchHaritaUrl();
            },
          ),
          ListTile(
            title: Text('Menü QR',
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
            title: Text('Rehber',
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 15)),
            onTap: () {
              _launchRehberUrl();
            },
          ),
          ListTile(
            title: Text('Etkinlikler',
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 15)),
            onTap: () {
              _launchEtkinlikUrl();
            },
          ),
          ListTile(
            title: Text('Haberler',
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 15)),
            onTap: () {
              _launchHaberUrl();
            },
          ),
          ListTile(
            title: Text('İdari Birimler',
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 15)),
            onTap: () {
              _launchIdariBirimUrl();
            },
          ),
          ExpansionTile(
              title: Text("Fakülteler",
                  style: GoogleFonts.muktaVaani(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.6,
                      fontSize: 15)),
              children: <Widget>[
                ListTile(
                  title: Text("Diş Hekimliği Fakültesi",
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Eczacılık Fakültesi",
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Eğitim Fakültesi",
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Fen-Edebiyat Fakültesi",
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Güzel Sanatlar Tasarım ve Mimarlık Fakültesi",
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Hukuk Fakültesi",
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("İktisadi ve İdari Bilimler Fakültesi",
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("İletişim Fakültesi",
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Mühendislik Fakültesi",
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Sağlık Bilimleri Fakültesi",
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Ticari Bilimler Fakültesi",
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 15)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Tıp Fakültesi",
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
