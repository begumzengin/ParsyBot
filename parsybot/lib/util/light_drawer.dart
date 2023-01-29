import 'package:flutter/material.dart';
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

  Future<void> _launchKampusteYasamUrl() async {
    final Uri _url = Uri.parse('https://www.baskent.edu.tr/tr/kampuste-yasam');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchKurumsalUrl() async {
    final Uri _url = Uri.parse('https://www.baskent.edu.tr/tr/kurumsal');
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
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            title: Text('Sık Sorulan Sorular'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Harita'),
            onTap: () {
              _launchHaritaUrl();
            },
          ),
          ListTile(
            title: Text('Menü QR'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MenuQR()));
            },
          ),
          ListTile(
            title: Text('Rehber'),
            onTap: () {
              _launchRehberUrl();
            },
          ),
          ListTile(
            title: Text('Etkinlikler'),
            onTap: () {
              _launchEtkinlikUrl();
            },
          ),
          ListTile(
            title: Text('Haberler'),
            onTap: () {
              _launchHaberUrl();
            },
          ),
          ListTile(
            title: Text('İdari Birimler'),
            onTap: () {
              _launchIdariBirimUrl();
            },
          ),
          ListTile(
            title: Text('Kampüste Yaşam'),
            onTap: () {
              _launchKampusteYasamUrl();
            },
          ),
          ListTile(
            title: Text('Kurumsal'),
            onTap: () {
              _launchKurumsalUrl();
            },
          ),
        ],
      ),
    );
  }
}
