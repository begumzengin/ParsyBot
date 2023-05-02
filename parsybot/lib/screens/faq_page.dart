import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parsybot/constants.dart';

class FaqPage extends StatelessWidget {
  final List<Map<String, Object>> engFaq = [
    {
      "question": "What is sibling scholarship?",
      "ansIndex": 0,
    },
    {
      "question":
          "One of the siblings studying at Baskent University is given a support scholarship at the rate of 10% of the tuition fee. If the student who benefits from the sibling scholarship fails, the scholarship is transferred to the other sibling. The sibling to whom the scholarship is transferred should not have completed the regular education period, and her/his GPA must be at least 2.00.",
      "ansIndex": 1,
    },
    {
      "question": "How much is a sports scholarship in individual sports?",
      "ansIndex": 0,
    },
    {
      "question":
          "For associate degree and undergraduate students studying in sports branches; In individual sports branches; the students are awarded full tuition coverage for the first place, 75% of tuition for the second place, and 50% of tuition for the third place won in the international competitions of individual sports branches attended by Turkish University Sports Federation, in the absence of our University team and provided that they carry our University logo. In individual sports branches; the students are awarded 75% coverage of tuition for the first place, 50% of tuition for the second place, and 25% of tuition for the third place won competing in the highest league of the branch in the national competitions organized by Turkish University Sports Federation of individual sports branches, in the absence of our University team and provided that they carry our University logo.",
      "ansIndex": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FAQ',
        ),
        elevation: 0,
        backgroundColor: sanMarino,
      ),
      backgroundColor: lightBackground,
      body: ListView.builder(
        itemCount: engFaq.length,
        itemBuilder: (context, index) {
          final question = engFaq[index]['question'];
          final ansIndex = engFaq[index]['ansIndex'];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: ansIndex == 0 ? 'Q: ' : 'A: ',
                    style: GoogleFonts.mulish(
                        fontWeight:
                            ansIndex == 0 ? FontWeight.bold : FontWeight.normal,
                        fontSize: 16,
                        color: pickledBluewood),
                  ),
                  TextSpan(
                      text: question.toString(),
                      style: GoogleFonts.mulish(
                          fontWeight: ansIndex == 0
                              ? FontWeight.bold
                              : FontWeight.normal,
                          fontSize: 16,
                          color: pickledBluewood)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
