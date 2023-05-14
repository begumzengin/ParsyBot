import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

import '../model/chat_model.dart';

class ApiService {
  /*
  static Future<List<ModelsModel>> getModels() async {
    try {
      var response = await http.get(Uri.parse("$BASE_URL/models"), headers: {
        'Authorization': 'Bearer $API_KEY',
      });

      Map jsonResponse = jsonDecode(response.body);

      if (jsonResponse['error'] != null) {
        //print("jsonResponse['error'] ${jsonResponse['error']['message']}");
        throw HttpException(jsonResponse['error']['message']);
      }
      //print("jsonResponse: $jsonResponse");
      List temp = [];
      for (var value in jsonResponse["data"]) {
        temp.add(value);
        //log("temp ${value["id"]}");
      }
      return ModelsModel.modelsFromSnaphot(temp);
    } catch (error) {
      log("error $error");
      rethrow;
    }
  }
  */

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
  }
  */

  //send message
  static Future<List<ChatModel>> sendMessage({required String message}) async {
    try {
      //log("modelID $modelID");

      var response = await http.post(
        Uri.parse('https://10.100.192.60:8080/chat'),
        headers: {
          'Content-type': 'application/json',
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE',
          'Access-Control-Allow-Headers': 'Content-Type',
          'Access-Control-Max-Age': '300'
        },
        body: jsonEncode({'message': message}),
      );
      Map jsonResponse = jsonDecode(response.body);

      if (jsonResponse['error'] != null) {
        //print("jsonResponse['error'] ${jsonResponse['error']['message']}");
        throw HttpException(jsonResponse['error']['message']);
      }
      List<ChatModel> chatList = [];
      if (jsonResponse.isNotEmpty) {
        //log("jsonResponse[choices]text ${jsonResponse["choices"][0]["text"]}");
        chatList = List.generate(
            1, (index) => ChatModel(msg: jsonResponse["answer"], chatIndex: 1));
      }
      return chatList;
    } catch (error) {
      log("error $error");
      rethrow;
    }
  }
}
