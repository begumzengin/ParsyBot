import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';
import 'package:parsybot/model/locale.dart';
import 'package:parsybot/screens/light_landing_page.dart';
import 'package:provider/provider.dart';
import '../../l10n/app_localizations.dart';

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  t.existingDatasets,
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      color: pickledBluewood),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(16.0),
                  child: ListView.builder(
                    itemCount: 5, // replace with actual dataset count
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text('Dataset ${index + 1}'),
                        trailing: Wrap(
                          spacing: 10,
                          children: <Widget>[
                            Icon(Icons.delete),
                            Icon(Icons.edit),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                        onTap: () {
                          // navigate to dataset details page
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
                  Widget>[
                ElevatedButton(
                    onPressed: () {},
                    child: Text(t.uploadDataset),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cinnabar),
                      shadowColor: MaterialStateProperty.all<Color>(sinbad),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(t.deleteDataset),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cinnabar),
                      shadowColor: MaterialStateProperty.all<Color>(sinbad),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(t.updateDataset),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cinnabar),
                      shadowColor: MaterialStateProperty.all<Color>(sinbad),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(t.modelTraining),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cinnabar),
                      shadowColor: MaterialStateProperty.all<Color>(sinbad),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                    )),
              ]),
              SizedBox(height: 20)
            ],
          ),
        ));
  }
}
