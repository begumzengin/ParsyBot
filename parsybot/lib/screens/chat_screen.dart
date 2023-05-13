import 'dart:developer';

import 'package:provider/provider.dart';

import '../constants.dart';
import '../provider/chats_provider.dart';
import '../util/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../util/text_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _isTyping = false;
  late TextEditingController textEditingController;
  late ScrollController _listScrollController;
  late FocusNode focusNode;
  //String _response = '';

  /*
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
  */

  @override
  void initState() {
    textEditingController = TextEditingController();
    _listScrollController = ScrollController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    _listScrollController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chatProvider = Provider.of<ChatProvider>(context);
    return Scaffold(
        backgroundColor: lightBackground,
        appBar: AppBar(
          title: Text('ParsyBot', textAlign: TextAlign.center),
          backgroundColor: cinnabar,
          elevation: 0,
        ),
        body: SafeArea(
            child: Column(children: [
          Flexible(
              child: ListView.builder(
                  controller: _listScrollController,
                  itemCount: chatProvider.getChatList.length,
                  itemBuilder: (context, index) {
                    return ChatWidget(
                        msg: chatProvider.getChatList[index].msg,
                        chatIndex: chatProvider.getChatList[index].chatIndex);
                  })),
          if (_isTyping) ...[
            const SpinKitThreeBounce(
              color: Color(0xffe2474b),
              size: 18,
            ),
            SizedBox(
              height: 15,
            ),
          ],
          Material(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: const TextStyle(color: Colors.black),
                          controller: textEditingController,
                          onSubmitted: (value) async {
                            await sendMessageFCT(chatProvider: chatProvider);
                          },
                          decoration: const InputDecoration.collapsed(
                              hintText: "Size nasıl yardımcı olabilirim?",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic_rounded,
                          color: Color(0xffe2474b),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            await sendMessageFCT(chatProvider: chatProvider);
                          },
                          icon: const Icon(
                            Icons.send,
                            color: Color(0xffe2474b),
                          ))
                    ],
                  )))
        ])));
  }

  void scrollListToEnd() {
    _listScrollController.animateTo(
        _listScrollController.position.maxScrollExtent,
        duration: Duration(seconds: 2),
        curve: Curves.easeOut);
  }

  Future<void> sendMessageFCT({required ChatProvider chatProvider}) async {
    if (_isTyping) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: TextWidget(
          label: "Aynı anda birden çok mesaj gönderemezsiniz.",
        ),
        backgroundColor: Colors.red,
      ));
      return;
    }
    if (textEditingController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: TextWidget(
          label: "Lütfen bir mesaj gönderiniz.",
        ),
        backgroundColor: Colors.red,
      ));
      return;
    }
    try {
      String msg = textEditingController.text;
      setState(() {
        _isTyping = true;
        //chatList.add(ChatModel(msg: textEditingController.text, chatIndex: 0));
        chatProvider.addUserMessage(msg: msg);
        textEditingController.clear();
        focusNode.unfocus();
      });
      log("request has been sent");
      await chatProvider.sendMessageAndGetAnswers(msg: msg);
      /*
      chatList.addAll(await ApiService.sendMessage(
          message: textEditingController.text,
          modelID: modelsProvider.getCurrentModel));
          */
      setState(() {});
    } catch (e) {
      log("error $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: TextWidget(
          label: e.toString(),
        ),
        backgroundColor: Colors.red,
      ));
    } finally {
      setState(() {
        scrollListToEnd();
        _isTyping = false;
      });
    }
  }
}
