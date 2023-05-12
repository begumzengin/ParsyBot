import 'package:flutter/material.dart';
import 'package:parsybot/constants.dart';
import 'text_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
                    Expanded(
                        child: chatIndex == 0
                            ? TextWidget(label: msg)
                            : DefaultTextStyle(
                                style: TextStyle(
                                    color: Color(0xFFF3F6E8),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                                child: AnimatedTextKit(
                                    isRepeatingAnimation: false,
                                    repeatForever: false,
                                    displayFullTextOnTap: true,
                                    totalRepeatCount: 1,
                                    animatedTexts: [
                                      TyperAnimatedText(msg.trim(),
                                          speed: Duration(milliseconds: 30))
                                    ]),
                              )),
                  ],
                )))
      ],
    );
  }
}
