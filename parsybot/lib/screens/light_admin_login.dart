import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';
import 'package:parsybot/screens/light_landing_page.dart';
import 'package:parsybot/screens/light_admin_page.dart';

class AdminLogin extends StatefulWidget {
  AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  /*
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // WRONG EMAIL
      if (e.code == 'user-not-found') {
        // show error to user
        wrongEmailMessage();
      }

      // WRONG PASSWORD
      else if (e.code == 'wrong-password') {
        // show error to user
        wrongPasswordMessage();
      }
    }
  }

  // wrong email message popup
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              'Incorrect Email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  // wrong password message popup
  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              'Incorrect Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
  */

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
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
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
                        controller: passwordController,
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
                    /*
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LightAdminPage()));
                    },
                    */
                    onPressed: () async {
                      try {
                        final userCredential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim(),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LightAdminPage(),
                          ),
                        );
                      } catch (e) {
                        print('Sign in failed: $e');
                      }
                    },
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
