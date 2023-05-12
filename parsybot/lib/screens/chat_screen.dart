import 'dart:convert';

import '../constants.dart';
import '../util/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool _isTyping = true;
  late TextEditingController textEditingController;
  String _response = '';

  void _sendMessage(String message) async {
    final url = Uri.parse('http://10.100.192.60:8080/chat');
    final response = await http.post(
      url,
      headers: {
        'Content-type': 'application/json',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE',
        'Access-Control-Allow-Headers': 'Content-Type',
        'Access-Control-Max-Age': '300'
      },
      body: jsonEncode({'message': message}),
    );
    final jsonResponse = jsonDecode(response.body);
    setState(() {
      _response = jsonResponse['answer'];
    });
  }

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ParsyBot', textAlign: TextAlign.center),
          backgroundColor: cinnabar,
          elevation: 0,
        ),
        body: SafeArea(
            child: Column(
          children: [
            Flexible(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ChatWidget(
                          msg: _response,
                          chatIndex: int.parse(
                              chatMessages[index]["chatIndex"].toString()));
                    })),
            if (_isTyping) ...[
              const SpinKitThreeBounce(
                color: Color(0xffe2474b),
                size: 18,
              ),
              SizedBox(
                height: 15,
              ),
              Material(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: TextField(
                            style: const TextStyle(color: Colors.white),
                            controller: textEditingController,
                            onSubmitted: (value) {},
                            decoration: const InputDecoration.collapsed(
                                hintText: "Sorunuzu yazınız",
                                hintStyle: TextStyle(color: Colors.grey)),
                          )),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic_rounded,
                              color: Color(0xffe2474b),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                _sendMessage(textEditingController.text);
                                textEditingController.clear();
                              },
                              icon: const Icon(
                                Icons.send,
                                color: Color(0xffe2474b),
                              ))
                        ],
                      )))
            ]
          ],
        )));
  }
}

