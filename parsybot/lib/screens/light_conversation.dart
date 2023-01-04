import 'package:flutter/material.dart';
import 'package:parsybot/constants.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class LightConversation extends StatefulWidget {
  @override
  _LightConversationState createState() => _LightConversationState();
}

class _LightConversationState extends State<LightConversation> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  //speech to text elements
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _textSpeech = 'Mikrofon tuşuna basıp konuşun veya mesajınızı yazın';

  void onListen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
          onStatus: (val) => print('onStatus: $val'),
          onError: (val) => print('onError: $val'));
      if (available) {
        setState(() {
          _isListening = true;
        });
        _speech.listen(
            onResult: (val) => setState(() {
                  _textSpeech = val.recognizedWords;
                }));
      } else {
        setState(() {
          _isListening = false;
          _speech.stop();
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ParsyBot', textAlign: TextAlign.center),
        backgroundColor: cinnabar,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 20,
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF406D96),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Mesaj $index',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFA8D0DA),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Mesaj $index'),
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                      hintText: _textSpeech,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              IconButton(
                onPressed: () {
                  onListen();
                },
                icon: Icon(
                  Icons.mic_rounded,
                  color: Color(0xffe2474b),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send_rounded,
                  color: Color(0xffe2474b),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
