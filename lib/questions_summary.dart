import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.lightBlue, shape: BoxShape.circle),
              child: Text(((data['question_index'] as int) + 1).toString()),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Expanded(
              child: Column(
                children: [
                  Text(
                    data['question'] as String,
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 14),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    data['user_answer'] as String,
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 1, 161, 247),
                    ),
                  ),
                  Text(
                    data['correct_answer'] as String,
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 84, 252, 72),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
