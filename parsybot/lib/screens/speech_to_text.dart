import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:parsybot/constants.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class HighlightSpeech extends StatefulWidget {
  @override
  _HighlightSpeechState createState() => _HighlightSpeechState();
}

class _HighlightSpeechState extends State<HighlightSpeech> {
  final Map<String, HighlightedWord> _highlights = {
    'library': HighlightedWord(
        onTap: () => print('library'),
        textStyle: const TextStyle(
          color: darkPrimary,
          fontWeight: FontWeight.bold,
          fontSize: 32.0,
        )),
    'engineering': HighlightedWord(
      onTap: () => print('engineering'),
      textStyle: const TextStyle(
        color: cinnabar,
        fontWeight: FontWeight.bold,
        fontSize: 32.0,
      ),
    ),
    'department': HighlightedWord(
      onTap: () => print('department'),
      textStyle: const TextStyle(
        color: pickledBluewood,
        fontWeight: FontWeight.bold,
        fontSize: 32.0,
      ),
    ),
  };

  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = "Press the button and start speaking";
  double _confidence = 1.0;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text('Confidence ${(_confidence * 100.0).toStringAsFixed(1)}%'),
          backgroundColor: sanMarino,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: AvatarGlow(
          animate: _isListening,
          glowColor: Theme.of(context).primaryColor,
          endRadius: 75.0,
          duration: const Duration(milliseconds: 2000),
          repeatPauseDuration: const Duration(milliseconds: 100),
          repeat: true,
          child: FloatingActionButton(
            backgroundColor: cinnabar,
            onPressed: _listen,
            child: Icon(_isListening ? Icons.mic : Icons.mic_none),
          ),
        ),
        body: SingleChildScrollView(
            reverse: true,
            child: Container(
              padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
              child: TextHighlight(
                text: _text,
                words: _highlights,
                textStyle: const TextStyle(
                  fontSize: 32.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )));
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}
