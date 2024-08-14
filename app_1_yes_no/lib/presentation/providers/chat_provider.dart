import 'package:class_2/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Hello Love!', fromWho: FromWho.me),
    Message(text: 'Have u already return form work?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    // -TODO: implement method
  }
}
