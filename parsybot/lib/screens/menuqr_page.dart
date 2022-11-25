import 'package:flutter/material.dart';
import 'package:parsybot/constants.dart';

class MenuQR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Menu QR'),
          backgroundColor: cinnabar,
        ),
        body: Center(
            child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20.0),
          minScale: 0.1,
          maxScale: 2,
          child: Image.asset(
            'assets/parsybot_images/menuqr.jpeg',
            /*
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            */
            //alignment: Alignment.center,
          ),
        )));
  }
}
