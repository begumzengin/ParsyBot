import 'package:firebase_auth/firebase_auth.dart';
import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';
import 'package:parsybot/screens/admin_screens/light_admin_page.dart';
import 'package:provider/provider.dart';
import '../model/locale.dart';

import '../l10n/app_localizations.dart';

class AdminLogin extends StatefulWidget {
  AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final targetPlatform = Theme.of(context).platform;
    final screenWidth = MediaQuery.of(context).size.width;
    var t = AppLocalizations.of(context)!;
    var selectedLocale = Localizations.localeOf(context).toString();
    bool _isValidLogin;
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
                )),
            Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: IconButton(
                  onPressed: () {},
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
              t.adminLoginTitle,
              style: TextStyle(
                color: Color(0xFF2F3A58),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 40),

            //kullanıcı adı
            Padding(
                padding: (screenWidth < 680)
                    ? EdgeInsets.symmetric(horizontal: 25.0)
                    : EdgeInsets.symmetric(horizontal: 130.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFAAB0B5),
                      border: Border.all(color: pickledBluewood),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        )))),
            SizedBox(height: 20),

            //şifre
            Padding(
                padding: (screenWidth < 680)
                    ? EdgeInsets.symmetric(horizontal: 25.0)
                    : EdgeInsets.symmetric(horizontal: 130.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFAAB0B5),
                    border: Border.all(color: pickledBluewood),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: t.passwordHintText,
                        ),
                      )),
                )),
            SizedBox(height: 40),

            //giriş yap butonu
            SizedBox(
                width: 167,
                height: 40,
                child: ElevatedButton(
                    onPressed: () async {
                      try {
                        final userCredential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim(),
                        );
                        setState(() {
                          _isValidLogin = true;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LightAdminPage(),
                          ),
                        );
                      } catch (e) {
                        setState(() {
                          _isValidLogin = false;
                        });
                      }
                    },
                    child: Text(t.loginButton,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cinnabar),
                      shadowColor: MaterialStateProperty.all<Color>(sinbad),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                    ))),
            SizedBox(height: 30),
            if (_isValidLogin = false)
              Text(
                'Email or password is not correct',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
          ],
        ))));
  }
}
