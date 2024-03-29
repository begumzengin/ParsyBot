import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_tr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('tr')
  ];

  /// No description provided for @parsyGreeting.
  ///
  /// In tr, this message translates to:
  /// **'Merak ettiğin her şeyi sorabilirsin!'**
  String get parsyGreeting;

  /// No description provided for @shortcutsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kısayollar'**
  String get shortcutsTitle;

  /// No description provided for @faqTitle.
  ///
  /// In tr, this message translates to:
  /// **'Sık Sorulan Sorular'**
  String get faqTitle;

  /// No description provided for @mapTitle.
  ///
  /// In tr, this message translates to:
  /// **'Harita'**
  String get mapTitle;

  /// No description provided for @menusTitle.
  ///
  /// In tr, this message translates to:
  /// **'Menüler'**
  String get menusTitle;

  /// No description provided for @phonebookTitle.
  ///
  /// In tr, this message translates to:
  /// **'Rehber'**
  String get phonebookTitle;

  /// No description provided for @eventsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Etkinlikler'**
  String get eventsTitle;

  /// No description provided for @newsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Haberler'**
  String get newsTitle;

  /// No description provided for @administrationTitle.
  ///
  /// In tr, this message translates to:
  /// **'İdari Birimler'**
  String get administrationTitle;

  /// No description provided for @facultiesTitle.
  ///
  /// In tr, this message translates to:
  /// **'Fakülteler'**
  String get facultiesTitle;

  /// No description provided for @dentistryTitle.
  ///
  /// In tr, this message translates to:
  /// **'Diş Hekimliği Fakültesi'**
  String get dentistryTitle;

  /// No description provided for @pharmacyTitle.
  ///
  /// In tr, this message translates to:
  /// **'Eczacılık Fakültesi'**
  String get pharmacyTitle;

  /// No description provided for @educationTitle.
  ///
  /// In tr, this message translates to:
  /// **'Eğitim Fakültesi'**
  String get educationTitle;

  /// No description provided for @scienceAndLettersTitle.
  ///
  /// In tr, this message translates to:
  /// **'Fen-Edebiyat Fakültesi'**
  String get scienceAndLettersTitle;

  /// No description provided for @fineArtsDesignArchTitle.
  ///
  /// In tr, this message translates to:
  /// **'Güzel Sanatlar Tasarım ve Mimarlık Fakültesi'**
  String get fineArtsDesignArchTitle;

  /// No description provided for @lawTitle.
  ///
  /// In tr, this message translates to:
  /// **'Hukuk Fakültesi'**
  String get lawTitle;

  /// No description provided for @economicsAdministrativeTitle.
  ///
  /// In tr, this message translates to:
  /// **'İktisadi ve İdari Bilimler Fakültesi'**
  String get economicsAdministrativeTitle;

  /// No description provided for @communicationTitle.
  ///
  /// In tr, this message translates to:
  /// **'İletişim Fakültesi'**
  String get communicationTitle;

  /// No description provided for @engineeringTitle.
  ///
  /// In tr, this message translates to:
  /// **'Mühendislik Fakültesi'**
  String get engineeringTitle;

  /// No description provided for @healthSciencesTitle.
  ///
  /// In tr, this message translates to:
  /// **'Sağlık Bilimleri Fakültesi'**
  String get healthSciencesTitle;

  /// No description provided for @commercialScienceTitle.
  ///
  /// In tr, this message translates to:
  /// **'Ticari Bilimler Fakültesi'**
  String get commercialScienceTitle;

  /// No description provided for @medicineTitle.
  ///
  /// In tr, this message translates to:
  /// **'Tıp Fakültesi'**
  String get medicineTitle;

  /// No description provided for @adminLoginTitle.
  ///
  /// In tr, this message translates to:
  /// **'Sistem Yöneticisi Girişi'**
  String get adminLoginTitle;

  /// No description provided for @passwordHintText.
  ///
  /// In tr, this message translates to:
  /// **'Şifre'**
  String get passwordHintText;

  /// No description provided for @loginButton.
  ///
  /// In tr, this message translates to:
  /// **'Giriş yap'**
  String get loginButton;

  /// No description provided for @addDataset.
  ///
  /// In tr, this message translates to:
  /// **'Veri Kümesi Ekleme'**
  String get addDataset;

  /// No description provided for @deleteDataset.
  ///
  /// In tr, this message translates to:
  /// **'Veri Kümesi Silme'**
  String get deleteDataset;

  /// No description provided for @updateDataset.
  ///
  /// In tr, this message translates to:
  /// **'Veri Kümesi Güncelleme'**
  String get updateDataset;

  /// No description provided for @modelTraining.
  ///
  /// In tr, this message translates to:
  /// **'Model Eğitimi'**
  String get modelTraining;

  /// No description provided for @existingDatasets.
  ///
  /// In tr, this message translates to:
  /// **'Mevcut Veri Kümeleri'**
  String get existingDatasets;

  /// No description provided for @uploadDataset.
  ///
  /// In tr, this message translates to:
  /// **'Veri Kümesi Yükle'**
  String get uploadDataset;

  /// No description provided for @contactUs.
  ///
  /// In tr, this message translates to:
  /// **'İletişim'**
  String get contactUs;

  /// No description provided for @aboutUs.
  ///
  /// In tr, this message translates to:
  /// **'ParsyBot, bitirme projesi olarak Feride Nursena Cavlı, Zeynep Karkıner, Begüm Yaman ve Begüm Zengin tarafından Doç. Dr. Mustafa Sert danışmanlığında hayata geçirilmiştir.'**
  String get aboutUs;

  /// No description provided for @chatHintText.
  ///
  /// In tr, this message translates to:
  /// **'Size nasıl yardımcı olabilirim?'**
  String get chatHintText;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'tr': return AppLocalizationsTr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
