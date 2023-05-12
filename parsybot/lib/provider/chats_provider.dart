import 'package:flutter/material.dart';

import '../model/chat_model.dart';
import '../services/api_service.dart';

class ChatProvider with ChangeNotifier {
  List<ChatModel> chatList = [];
  List<ChatModel> get getChatList {
    return chatList;
  }

  void addUserMessage({required String msg}) {
    chatList.add(ChatModel(msg: msg, chatIndex: 0));
    notifyListeners();
  }

  Future<void> sendMessageAndGetAnswers({required String msg}) async {
    chatList.addAll(await ApiService.sendMessage(message: msg));
    notifyListeners();
  }
}
