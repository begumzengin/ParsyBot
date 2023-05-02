import 'package:flutter/material.dart';
import 'package:parsybot/constants.dart';

import '../../l10n/app_localizations.dart';

class UpdateDatasetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(t.updateDataset),
        backgroundColor: sanMarino,
      ),
      backgroundColor: lightBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    trailing: Icon(Icons.edit),
                    onTap: () {
                      // navigate to dataset details page
                    },
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
                onPressed: () {},
                child: Text(t.updateDataset),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(cinnabar),
                  shadowColor: MaterialStateProperty.all<Color>(sinbad),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                )),
          ),
        ],
      ),
    );
  }
}
