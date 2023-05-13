import 'package:flutter/material.dart';
import 'package:parsybot/constants.dart';
import 'text_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  final String msg;
  final int chatIndex;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  bool _hasBeenPressedUp = false;
  bool _hasBeenPressedDown = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
            color: widget.chatIndex == 1 ? sanMarino : pickledBluewood,
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      widget.chatIndex == 0
                          ? 'assets/parsybot_images/question_mark.png'
                          : 'assets/parsybot_images/parsy_kafasi.png',
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                        child: widget.chatIndex == 0
                            ? TextWidget(label: widget.msg)
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
                                      TyperAnimatedText(widget.msg.trim(),
                                          speed: Duration(milliseconds: 30))
                                    ]),
                              )),
                    widget.chatIndex == 0
                        ? const SizedBox.shrink()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(Icons.thumb_up_alt_outlined),
                                color:
                                    _hasBeenPressedUp ? cinnabar : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    _hasBeenPressedUp = !_hasBeenPressedUp;
                                  });
                                },
                              ),
                              SizedBox(width: 5),
                              IconButton(
                                icon: Icon(Icons.thumb_down_alt_outlined),
                                color:
                                    _hasBeenPressedDown ? cinnabar : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    _hasBeenPressedDown = !_hasBeenPressedDown;
                                  });
                                },
                              ),
                            ],
                          )
                  ],
                )))
      ],
    );
  }
}
