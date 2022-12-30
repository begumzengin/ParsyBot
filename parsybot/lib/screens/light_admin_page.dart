import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';
import 'package:parsybot/screens/dark_admin_login.dart';
import 'package:parsybot/screens/light_landing_page.dart';

class LightAdminPage extends StatelessWidget {
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
            )
          ],
        ),
        backgroundColor: lightBackground,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 251,
                height: 55,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Veri Seti Ekleme',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cinnabar),
                      shadowColor: MaterialStateProperty.all<Color>(sinbad),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                    )),
              ),
              SizedBox(
                width: 251,
                height: 55,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Veri Seti Silme',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cinnabar),
                      shadowColor: MaterialStateProperty.all<Color>(sinbad),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                    )),
              ),
              SizedBox(
                width: 251,
                height: 55,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Veri Seti Güncelleme',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cinnabar),
                      shadowColor: MaterialStateProperty.all<Color>(sinbad),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                    )),
              ),
              SizedBox(
                width: 251,
                height: 55,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Model Eğitme',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cinnabar),
                      shadowColor: MaterialStateProperty.all<Color>(sinbad),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                    )),
              ),
            ],
          ),
        ));
  }
}
