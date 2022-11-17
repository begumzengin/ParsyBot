import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';
import 'package:parsybot/screens/dark_admin_login.dart';
import 'package:parsybot/screens/light_landing_page.dart';

class AdminLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: lightBackground,
          iconTheme: IconThemeData(color: pickledBluewood),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: pickledBluewood),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => LandingPage())),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.language, color: pickledBluewood, size: 30),
                )),
            Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DarkAdminLogin()));
                  },
                  icon: Icon(Icons.dark_mode, color: pickledBluewood, size: 30),
                ))
          ],
        ),
        backgroundColor: lightBackground,
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.admin_panel_settings, size: 70, color: pickledBluewood),
            SizedBox(height: 30),
            //sistem yöneticisi girişi
            Text(
              'Sistem Yöneticisi Girişi',
              style: TextStyle(
                color: Color(0xFF2F3A58),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 40),

            //kullanıcı adı
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFAAB0B5),
                      border: Border.all(color: pickledBluewood),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Kullanıcı adı',
                          ),
                        )))),
            SizedBox(height: 20),

            //şifre
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFAAB0B5),
                    border: Border.all(color: pickledBluewood),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Şifre',
                        ),
                      )),
                )),
            SizedBox(height: 40),

            //giriş yap butonu
            SizedBox(
                width: 167,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Giriş yap',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cinnabar),
                      shadowColor: MaterialStateProperty.all<Color>(sinbad),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                    )))
          ],
        ))));
  }
}
