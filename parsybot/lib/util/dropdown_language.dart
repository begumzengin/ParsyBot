import 'package:flutter/material.dart';
import 'package:parsybot/constants.dart';
import 'package:parsybot/l10n/app_localizations.dart';
import 'package:parsybot/model/locale.dart';

/*
const List<String> languageList = <String>['Türkçe', 'English'];

class DropdownLanguage extends StatefulWidget {
  const DropdownLanguage({super.key});

  @override
  State<DropdownLanguage> createState() => _DropdownLanguageState();
}

class _DropdownLanguageState extends State<DropdownLanguage> {
  String dropdownValue = languageList.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.language),
      iconEnabledColor: pickledBluewood,
      isExpanded: true,
      elevation: 16,
      style: const TextStyle(color: cinnabar),
      underline: Container(
        height: 2,
        color: cinnabar,
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: languageList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
*/

/*
class DropdownLanguage extends StatelessWidget {
  const DropdownLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    var selectedLocale = Localizations.localeOf(context).toString();

    

      )
    );
  }
}
*/