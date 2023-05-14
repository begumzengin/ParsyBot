import 'package:flutter/material.dart';
import 'package:parsybot/constants.dart';
import 'package:parsybot/screens/about_us.dart';
import 'package:parsybot/screens/faq_page.dart';
import 'package:parsybot/screens/light_landing_page.dart';
import 'package:parsybot/screens/sss_page.dart';
import 'package:provider/provider.dart';
import 'package:parsybot/model/locale.dart';
import 'package:parsybot/l10n/app_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'provider/chats_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    /*
    return MaterialApp(
      title: 'ParsyBot',
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
    */

    /*
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
            '/faq': (context) => FaqPage(),
            '/sss': (context) => SssPage(),
          },
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: sanMarino,
          ),
          initialRoute: '/',
        ),
      ),
    );
    */

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
        ChangeNotifierProvider(create: (_) => LocaleModel()),
      ],
      child: Consumer<LocaleModel>(
        builder: (context, localeModel, child) => MaterialApp(
          title: 'ParsyBot',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: localeModel.locale,
          routes: {
            '/': (context) => LandingPage(),
            '/faq': (context) => FaqPage(),
            '/sss': (context) => SssPage(),
            '/about_us': (context) => AboutUs(),
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
