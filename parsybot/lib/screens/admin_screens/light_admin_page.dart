import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';
import 'package:parsybot/model/locale.dart';
import 'package:parsybot/screens/admin_screens/add_dataset_page.dart';
import 'package:parsybot/screens/admin_screens/delete_dataset_page.dart';
import 'package:parsybot/screens/light_landing_page.dart';
import 'package:provider/provider.dart';

import '../../l10n/app_localizations.dart';
import 'update_dataset_page.dart';

class LightAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    var selectedLocale = Localizations.localeOf(context).toString();

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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddDatasetPage()));
                    },
                    child: Text(t.addDataset,
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeleteDatasetPage()));
                    },
                    child: Text(t.deleteDataset,
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateDatasetPage()));
                    },
                    child: Text(t.updateDataset,
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
                    child: Text(t.modelTraining,
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
