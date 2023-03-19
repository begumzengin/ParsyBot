import 'package:flutter/material.dart';
import 'package:parsybot/constants.dart';
import 'package:parsybot/screens/light_landing_page.dart';
import 'package:provider/provider.dart';
import 'package:parsybot/model/locale.dart';
import 'package:parsybot/l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*
    return MaterialApp(
      title: 'ParsyBot',
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
    */
    return ChangeNotifierProvider(
      create: (context) => LocaleModel(),
      child: Consumer<LocaleModel>(
        builder: (context, localeModel, child) => MaterialApp(
          title: 'ParsyBot',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: localeModel.locale,
          routes: {
            '/': (context) => LandingPage(),
          },
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: sanMarino,
          ),
          initialRoute: '/',
        ),
      ),
    );
  }
}
