import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';

class AdminLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackground,
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.admin_panel_settings, size: 60, color: pickledBluewood),
            SizedBox(height: 30),
            //sistem yöneticisi girişi
            Text(
              'Sistem Yöneticisi Girişi',
              style: TextStyle(
                color: Color(0xFF2F3A58),
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            SizedBox(height: 50),
            //kullanıcı adı
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFAAB0B5),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Kullanıcı adı',
                          ),
                        ))))
          ],
        ))));
  }
}
