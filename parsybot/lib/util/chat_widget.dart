import 'package:flutter/material.dart';
import 'package:parsybot/constants.dart';
import 'text_widget.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  final String msg;
  final int chatIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
            color: chatIndex == 1 ? sanMarino : pickledBluewood,
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      chatIndex == 1
                          ? 'assets/parsybot_images/usericon2.png'
                          : 'assets/parsybot_images/parsy_kafasi.png',
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 8),
                    Expanded(child: TextWidget(label: msg)),
                  ],
                )))
      ],
    );
  }
}
