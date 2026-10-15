import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
  


}

class _QuestionScreenState extends State<QuestionWidget> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(currentQuestion.text, style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((item) {
            return AnswerButton(answerText: item, onTap: () {});
          }),
        ],
      ),
    );
  }
}